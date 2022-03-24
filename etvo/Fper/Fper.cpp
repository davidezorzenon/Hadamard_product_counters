#include "Fper.h"
#include<sstream>
#include<cmath>
#include<iostream>
#include<algorithm>
#include "../common/EtvoTools.h"
    
using namespace std;
/*! 
* \file Fper.cpp
* \author BC LARIS
* \version 2.0
*/


namespace etvo
{


std::ostream & operator<<(std::ostream & f,const Fper & fp )
{
    f<<fp.toString();
    return f;
}

/*! autoreduction mode default = ON */
bool Fper::_autoreduction=true;


bool Fper::getAutoReductionState()
{
  return _autoreduction;
}

void Fper::setAutoReduction(bool on)
{
    _autoreduction=on;
}

bool Fper::isNodecreasing(const std::vector<int> & v)
{
   for(unsigned i=0;i<v.size()-1;i++)
   {
       if(v[i+1]<v[i]) return false;
   }
   return true;
}

void Fper::updateYMinMax()
{
  // _yMax0 and _yMin0 are the max/min projection of elements of the function
  // (in parallel with the slope) on the x=0 axis
  // These points give a kind of enveloppe 
    if(_seq.size()>0)
    {
        _yMax0=_yMin0=_seq[0];
        //rational<int> s=getSlope(); // Make it boost independent (9/11/18)
        double s = (double)_codomP / _domP;
        
        for(unsigned ki=1;ki<_seq.size();ki++)
        {
          // Make it boost independent (9/11/18)
            //rational<int> val=rational<int>(getValue(ki)) - s*rational<int>(ki);
            double val = getValue(ki) - s * ki;
            if(val>_yMax0) _yMax0=val;
            else
            {
                if(val<_yMin0) _yMin0=val;
            }
        }
    }
}


Fper::Fper()
{
    _domP = 1;
    _codomP = 1;
    _seq.assign(_domP,0);
    _yMax0=_yMin0=0;
}
 
Fper::Fper(int dP,int codP,const std::vector<int> & seq)
{
    _domP = std::max(1,abs(dP));
    _codomP = std::max(1,abs(codP));
    _seq.assign(_domP,0);
    _yMax0=_yMin0=0;
    if(isNodecreasing(seq) && seq.size()==_domP && (seq.back()-seq[0])<=_codomP)
    {
        _seq=seq;        
    }
	updateYMinMax();  //IMPORTANT TO UPDATE even if seq is not correct //BUG FIXED 12/12/18
   if(_autoreduction)   reduce();
}

 void Fper::setSeq(const std::vector<int> & seq)
 {
      if(isNodecreasing(seq) && seq.size()==_domP && (seq.back()-seq[0])<=_codomP)
      {
          _seq=seq;          
		  updateYMinMax();
      }	 
    if(_autoreduction)   reduce();
 }

 bool Fper::operator!=(const Fper & f) const
 {
   return !((*this) == f);
 }

 bool Fper::operator==(const Fper & f) const
 {
   // Make it boost independent (9/11/18)
     //if(getSlope()==f.getSlope())
     if((_domP*f._codomP)==(f._domP*_codomP))
     {
        unsigned Per=_domP>=f._domP?_domP:f._domP;

        for(unsigned i=0;i<Per;i++)
        {
            if(getValue(i)!=f.getValue(i)) return false;
        }
        return true;
     }
     return false;
 }

 bool Fper::operator<=(const Fper & f) const
 {
   // Make it boost independent (9/11/18)
    //if(getSlope()==f.getSlope())
    if ((_domP*f._codomP) == (f._domP*_codomP))
     {
        unsigned Per=_domP>=f._domP?_domP:f._domP;

        for(unsigned i=0;i<Per;i++)
        {
            if(getValue(i)>f.getValue(i)) return false;
        }
        return true;
     }
     return false;
 }

 // Last correction 8/10/18 -> uses <=
 bool Fper::operator>=(const Fper & f) const
 {  
     return f <= (*this);
 }

 void Fper::canon()
 {
	 reduce();
 }
void Fper::reduce()
{
  // Make it boost free (9/11/18)
    //rational<int> s=getSlope();
    int div = Tools::gcd(_domP, _codomP);
    int sNum = _codomP / div;   
   
    if(sNum==_codomP) return;  //connot be reduced more
    else
    {
        //the maximal dividor is _codomP/s.numerator()
        unsigned divMax;
        bool reduction;
        do
        {
            reduction=false;
            divMax=_codomP/sNum;
            for(unsigned i=divMax;i>=2;i--)
            {
               if(reduceBy(i))
               {
                   reduction=true;
                  // cout << "reduction by " << i << endl;
               }
            }
        }while(reduction);
    }
}


bool Fper::reduceBy(unsigned div)
{
  // Make it boost free (9/11/18)
  //rational<int> s=getSlope();
  int dividor = Tools::gcd(_domP, _codomP);
  int sNum = _codomP / dividor;

    if(sNum==_codomP) return false;

    if(div>=2)
    {
        if((_domP%div)==0 && (_codomP%div==0))  //div is a dividor of _comP and _codomP
        {
            //unsigned newdomPer=_domP/div;
            //unsigned newcodomPer=_codomP/div;
            int newdomPer=_domP/div;
            int newcodomPer=_codomP/div;
            for(unsigned i=0;i<(unsigned)_domP;i++)
            {
                if(getValue(i+newdomPer)!=(getValue(i)+newcodomPer)) return false;
            }
            _seq.resize(newdomPer);
            _domP=newdomPer;
            _codomP=newcodomPer;
            return true;
        }
        else return false;
    }
    else return false;
}

Fper Fper::extendBy(unsigned mul) const
{
    if(mul>=2)
    {
        std::vector<int> vseq(_seq);
        std::vector<int> v;

        for(int i=0;i<(int)mul;i++)
        {
            v.insert(v.begin()+i*_seq.size(),vseq.begin(),vseq.end());
            for(unsigned j=0;j<vseq.size();j++)
            {
                vseq[j]+=_codomP;
            }
        }
        bool state = getAutoReductionState();
        setAutoReduction(false);
        Fper fextended(mul*_domP,mul*_codomP,v);
        setAutoReduction(state);
        return fextended;
    }
    else return *this;
}

 void Fper::setPeriodicity(int dP,int codP)
 {
     if(abs(dP)==_seq.size())
     {
         _domP = abs(dP);
        _codomP = abs(codP);
     }
     else
     {
         _domP = abs(dP);
         _codomP = abs(codP);
         _seq.assign(_seq.size(),0);
     }
 }

 int Fper::operator()(int arg) const
 {
     return getValue(arg);
 }

int Fper::getValue(int arg) const
{
   if(arg>=0)
   {
       return _seq[arg%_domP]+_codomP*(arg/_domP);
   }
   else
   {
       /* _domP=4  */
      /* -1 -> 3  -2 ->2 -3 ->1 -4->0 -5->3 */
      /* (-1->-4) nbPer=-1   (-5->-8) nbPer=-2 */
      unsigned idx=(_domP-((-arg)%_domP))%_domP;
      int nbPer=-(((-arg)-1)/_domP)-1;
      return _seq[idx]+nbPer*_codomP;
   }

}

std::string Fper::toString() const
{
  stringstream ss;
  ss<<"[";
  for(int v:_seq)
  {
      ss<<v<<" ";
  }
  ss<<"]("<<_domP << "," <<_codomP << ")";
  return  ss.str();
}

std::pair<int,int> Fper::getPeriodicity() const
{
  return pair<int,int>(_domP,_codomP);
}

/*
// Make it boost independent (9/11/18)
boost::rational<int> Fper::getSlope() const
{
    return boost::rational<int>(_codomP,_domP);
}*/

int Fper::getDomPer() const
{
    return _domP;
}

int Fper::getCodomPer() const
{
    return _codomP;
}

double Fper::getyMax0() const
{
    return _yMax0;
}

double Fper::getyMin0() const
{
    return _yMin0;
}

 Fper Fper::composeWith(const Fper & f)const
 {
        int mul=Tools::lcm(this->getDomPer(),f.getCodomPer());       
        int repetition=mul/f.getCodomPer();
        vector<int> seq(f._seq.size()*repetition);
        for(unsigned i=0;i<seq.size();i++)
        {
            seq[i]=getValue(f.getValue(i));
        }
        Fper fr(f._domP*repetition,(mul/_domP)*_codomP,seq);
        return fr;
 }
}
