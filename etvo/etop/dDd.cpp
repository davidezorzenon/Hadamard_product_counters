#include "dDd.h"
#include<sstream>
#include<cmath>
#include<exception>
using namespace std;

namespace etvo
{
/// set the default form as the Left Form
unsigned dDd::_canon=0;  // left _tr in [0,_tmb-1]

unsigned dDd::getCanonForm()
{
	return _canon;
}
void dDd::setCanonForm(unsigned val)
{
    _canon=val;
}

void dDd::canon()
{

    switch(_canon)
    {
    case 0:
        canonL();
        break;
    case 1:
        canonC();
        break;
    default:
        canonR();
        break;
    }
}

/// Create term d^tl TM_tmb d^tc TB_tmb d^tr
dDd::dDd(int tl,unsigned int mb,int tc,int tr):_tl(tl),_tmb(mb),_tc(tc),_tr(tr)
{
    if(_tmb==0) _tmb=1;
    canon();
}

 /// Create term d^tl TM_tmb d^0 TB_tmb d^tr
dDd::dDd(int tl,unsigned int tmb,int tr):_tl(tl),_tmb(tmb),_tc(0),_tr(tr)
{
    if(_tmb==0) _tmb=1;
    canon();
}

/// d^0 M_1 d^tc B_1 d^0 = d^tc
dDd::dDd(int tc):_tl(0),_tmb(1),_tc(tc),_tr(0)
{
      canon();
}

int dDd::getTc() const
{
    return _tc;
}

int dDd::getTl() const
{
    return _tl;
}
unsigned int dDd::getTmb() const
{
    return _tmb;
}

int dDd::getTr() const
{
    return _tr;
}
int dDd::invariant() const
{
    return _tl + _tmb*_tc + _tr;
}

int dDd::Rw(int ti) const
{
    int res = (((int)ceil((ti+_tr)/(double)_tmb)+_tc) *_tmb)+_tl;
    return res;
}

std::pair<unsigned,unsigned> dDd::getPeriodicity() const
{
    return pair<unsigned,unsigned>(_tmb,_tmb);
}


void dDd::canonL()
{
    _tr+=_tmb*_tc;
    _tc=0;
    if(_tr>=0)
    {
        _tl+= (_tr/_tmb)*_tmb;
        _tr = _tr%_tmb;
        if(_tr!=0)
        {
            _tr-=_tmb;
            _tl+=_tmb;
        }
    }
    else
    {
        int abstr = -_tr;
        int n = (abstr/_tmb)*_tmb;
        abstr=abstr%_tmb;
        _tr=-abstr;
       _tl-=n;
    }
}

void dDd::canonR()
{
    _tl+=_tmb*_tc;
    _tc=0;
    if(_tl>=0)
    {
        _tr+= (_tl/_tmb)*_tmb;
        _tl = _tl%_tmb;
        if(_tl!=0)
        {
            _tl-=_tmb;
            _tr+=_tmb;
        }
    }
    else
    {
        int abstl = -_tl;
        int n = (abstl/_tmb)*_tmb;
        abstl=abstl%_tmb;
        _tl=-abstl;
       _tr-=n;
    }
}

void dDd::canonC()
{
    if(_tr>=0)
    {
        _tc+= (_tr/_tmb);
        _tr = _tr%_tmb;
        if(_tr!=0)
        {
            _tr-=_tmb;
            _tc+=1;
        }
    }
    else
    {
        int abstr = -_tr;
        int n = (abstr/_tmb);
        abstr=abstr%_tmb;
        _tr=-abstr;
       _tc-=n;
    }

    if(_tl>=0)
    {
        _tc+= (_tl/_tmb);
        _tl = _tl%_tmb;
        if(_tl!=0)
        {
            _tl-=_tmb;
            _tc+=1;
        }
    }
    else
    {
        int abstl = -_tl;
        int n = (abstl/_tmb);
        abstl=abstl%_tmb;
        _tl=-abstl;
       _tc-=n;
    }
}
std::string dDd::toString(unsigned nVer) const
{
    std::stringstream ss;
    if(nVer==0)
    {
        if(getPeriodicity()==pair<unsigned,unsigned>(1,1)){    ss<<"d"<<_tl+_tc+_tr;  }
        else
        {
          bool pre = false;
          if (_tl)
          {
            ss << "d" << _tl;
            pre = true;
          }
           if(_tc)
            {
             if (pre) ss << ".";
             if(_tmb!=1) ss<<"D";
             if(_tc) ss<<"(d"<<_tc << ")";
             if(_tmb!=1) ss<<_tmb;
             pre = true;
            }
            else
            {
              if (_tmb != 1)
              {
                if (pre) ss << ".";
                ss << "D" << _tmb;
                pre = true;
              }
            }
           if (_tr)
           {
             if(pre) ss << ".";
             ss << "d" << _tr;
           }
        }
    }
     else
     {
             if(getPeriodicity()==pair<unsigned,unsigned>(1,1)){   ss<<"d"<<_tl+_tc+_tr; }
             else
             {
                if(_tl) ss<<"d"<<_tl;
                ss << "(" << _tmb << ":";
                if(_tc) ss << _tc << ":";
                ss << _tmb<<")";
                if(_tr) ss <<"d"<<_tr;
             }
     }
    return ss.str();
}

Fmaxp dDd::getRw() const
 {
    vector<int> seq(this->_tmb);
    for(unsigned i=0;i<seq.size();i++)
    {
        seq[i]=Rw(i);
    }
    return Fmaxp(_tmb,_tmb,seq);
 }


bool dDd::operator>=(const dDd & m) const
{
    return m<=(*this);
}

bool dDd::operator<=(const dDd & m) const
{
    return getRw()<=m.getRw();
}

bool dDd::operator==(const dDd & m) const
{
    if(_tmb == m._tmb && _tl==m._tl && _tr==m._tr && _tc==m._tc)
    {
        return true;
    }
    else return false;
}

/*  TODO : add this extension (see the version in gNg)
Eop gNg::ExtendBy(unsigned mul) const
{
    gNg cp(*this);
    cp.CanonL();

    if(mul>=2)
    {
        Eop op(gNg(0+cp._nl,mul*cp._m,mul*cp._b,(mul-1)*cp._b+cp._nr));
        for(int i=1;i<mul;i++)
        {
            op.Add(gNg(cp._nl+i*cp._m,mul*cp._m,mul*cp._b,(mul-1-i)*cp._b+cp._nr));
        }
        return op;
    }
    else return Eop(*this);
}*/

 std::ostream & operator<<(std::ostream & f, const dDd & m)
 {
     f<<m.toString();
     return f;
 }

}
