#include "gNg.h"
#include "E_op.h"
#include<sstream>
#include<cmath>
#include<exception>
using namespace std;

namespace etvo
{
/// set the default form (=0) as Left Form
unsigned gNg::_canon=0;  // left _nr in [0,_b-1] and _nc=0

void gNg::setCanonForm(unsigned val)
{
    _canon=val;
}

unsigned gNg::getCanonForm()
{
	return _canon;
}

void gNg::canon()
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

void gNg::canonL()
{
    _nr+=_b*_nc;
    _nc=0;
    if(_nr>=0)
    {
        _nl+= (_nr/_b)*_m;
        _nr = _nr%_b;
    }
    else
    {
       int n = (int)ceil((-_nr)/(double)_b);
       _nl-=n*_m;
       _nr+=n*_b;
    }
}

void gNg::canonR()
{
    _nl+=_m*_nc;
    _nc=0;
    if(_nl>=0)
    {
        _nr+= (_nl/_m)*_b;
        _nl = _nl%_m;
    }
    else
    {
       int n = (int)ceil((-_nl)/(double)_m);
       _nr-=n*_b;
       _nl+=n*_m;
    }
}

void gNg::canonC()
{
    if(_nl<0)
    {
       int n = (int)ceil((-_nl)/(double)_m);
       _nc-=n;
       _nl+=n*_m;
    }
    if(_nr<0)
    {
      int n = (int)ceil((-_nr)/(double)_b);
       _nc-=n*_m;
       _nr+=n*_b;
    }

    _nc+= (_nl/_m);
    _nl = _nl%_m;
    _nc+= (_nr/_b);
    _nr = _nr%_b;
}

 
gNg::gNg(int nl,unsigned int m,int nc,unsigned int b,int nr):_nl(nl),_m(m),_nc(nc),_b(b),_nr(nr)
{
    if(_m==0) _m=1;
    if(_b==0) _b=1;
    canon();
}


gNg::gNg(int nl,unsigned int m,unsigned int b,int nr):_nl(nl),_m(m),_nc(0),_b(b),_nr(nr)
{
    if(_m==0) _m=1;
    if(_b==0) _b=1;
    canon();
}

gNg::gNg(int nl,unsigned int mb,int nr):_nl(nl),_m(mb),_nc(0),_b(mb),_nr(nr)
{
    if(_m==0) _m=1;
    if(_b==0) _b=1;
    canon();
}


 gNg::gNg(int nc):_nl(0),_m(1),_nc(nc),_b(1),_nr(0)
 {
      canon();
 } 

std::pair<unsigned,unsigned> gNg::getPeriodicity() const
{
    return pair<unsigned,unsigned>(_b,_m);
}

int gNg::getNc() const
{
    return _nc;
}

int gNg::getNl() const
{
    return _nl;
}
unsigned int gNg::getM() const
{
    return _m;
}
unsigned int gNg::getB() const
{
   return _b;
}
int gNg::getNr() const
{
    return _nr;
}

int gNg::Fw(int ki) const
{
    int res = (((int)floor((ki+_nr)/(double)_b)+_nc) *_m)+_nl;
    return res;
}

Fminp gNg::getFw() const
 {
    vector<int> seq(this->_b);
    for(unsigned i=0;i<seq.size();i++)
    {
        seq[i]=Fw(i);
    }
    return Fminp(_b,_m,seq);
 }


bool gNg::operator>=(const gNg & m) const
{
    return m<=(*this);
}

bool gNg::operator<=(const gNg & m) const
{
    if(_m==m._m && _b==m._b)
    {
        return (_nl>=m._nl && _nr>=m._nr) || (_nl>=(m._nl+(int)_m)) || (_nr>=(m._nr+(int)_b));
    }
    else
    {
        throw "comparison between different periodicities not implemented yet!";
    }

}

bool gNg::operator==(const gNg & m) const
{
    if(_b == m._b && _m==m._m && _nl==m._nl && _nr==m._nr)
    {
        return true;
    }
    else return false;
}

std::string gNg::toString(unsigned nVer) const
{
    std::stringstream ss;
    if(nVer==0)
    {
        if(getPeriodicity()==pair<unsigned,unsigned>(1,1)){    ss<<"g"<<_nl+_nc+_nr;  }
        else
        {
            bool pre = false;
            if (_nl)
            {
              ss << "g" << _nl;
              pre = true;
            }            
            if (_m != 1)
            {
              if(pre) ss << ".";
              ss << "m" << _m; 
              pre = true;
            }
            if (_nc)
            {
              if (pre) ss << ".";
              ss << "g" << _nc;
              pre = true;
            }
            if (_b != 1)
            {
              if (pre) ss << ".";
              ss << "b" << _b;
              pre = true;
            }

            if (_nr)
            {
              if (pre) ss << ".";
              ss << "g" << _nr;
            }
        }
    }
     else
     {
             if(getPeriodicity()==pair<unsigned,unsigned>(1,1)){    ss<<"g"<<_nl+_nc+_nr; }
             else
             {
                if(_nl) ss<<"g"<<_nl;
                ss << "(" << _m << ":";
                if(_nc) ss << _nc << ":";
                ss << _b<<")";
                if(_nr) ss <<"g"<<_nr;
             }
     }
    return ss.str();
}


E_op gNg::extendBy(unsigned mul) const
{
    gNg cp(*this);
    cp.canonL();

    if(mul>=2)
    {
        E_op op(gNg(0+cp._nl,mul*cp._m,mul*cp._b,(mul-1)*cp._b+cp._nr));
        for(int i=1;i<(int)mul;i++)
        {
            op.add(gNg(cp._nl+i*cp._m,mul*cp._m,mul*cp._b,(mul-1-i)*cp._b+cp._nr));
        }
        return op;
    }
    else return E_op(*this);
}

 std::ostream & operator<<(std::ostream & f, const gNg & m)
 {
     f<<m.toString();
     return f;
 }
 
} //fin namespace
