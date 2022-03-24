#include "Fminp.h"
#include "../common/EtvoTools.h"
#include "../common/etvoException.h"
#include <iostream>
 
using namespace std;

namespace etvo
{

Fminp Fminp::E()
{
  return Fminp();
  /* Simplification 27/11/18
      int dP = 1;
     int codP =1;
     std::vector<int> seq(dP,0);
     return Fminp(dP,codP,seq);*/
}


Fminp::Fminp():Fper()
{
}

Fminp::Fminp(int dP,int codP,const std::vector<int> & seq):Fper(dP,codP,seq)
{
    //ctor
}

Fminp::Fminp(const Fper & f):Fper(f)
{
}

Fminp Fminp::min(const Fminp & f) const
{
  // Make it boost independent (9/11/18)
   //if(getSlope()==f.getSlope())
   if ((_domP*f._codomP) == (f._domP*_codomP))
    {
        if(f.getyMin0()>getyMax0()) return *this;
        if(getyMin0()>f.getyMax0()) return f;
        int per=Tools::lcm(getDomPer(),f.getDomPer());
        int dP=per;
        int codP=(per/getDomPer())*getCodomPer();
        vector<int> seq(dP);
        for(int ki=0;ki<dP;ki++)
        {
            seq[ki]=Tools::Min(getValue(ki),f.getValue(ki));
        }
        return Fminp(dP,codP,seq);
    }
    else
    {
        throw etvoException(1,"FMinp::Min : different slopes, no computation!");
    }
}

Fminp Fminp::max(const Fminp & f) const
{   
  // Make it boost independent (9/11/18)
  //if(getSlope()==f.getSlope())
  if ((_domP*f._codomP) == (f._domP*_codomP))
    {
        if(f.getyMin0()>getyMax0())       return f;
        if(getyMin0()>f.getyMax0())       return *this;
        int per=Tools::lcm(getDomPer(),f.getDomPer());
        int dP=per;
        int codP=(per/getDomPer())*getCodomPer();
        vector<int> seq(dP);
        for(int ki=0;ki<dP;ki++)
        {
            seq[ki]=Tools::Max(getValue(ki),f.getValue(ki));
        }
        return Fminp(dP,codP,seq);
    }
    else
    {
        throw etvoException(1,"FMinp::Max : different slopes, no computation!");
    }
}

bool Fminp::operator!=(const Fminp & f) const
{
  return Fper::operator!=(f);
}

bool Fminp::operator==(const Fminp & f) const
 {    
     return Fper::operator==(f);
 }

 bool Fminp::operator<=(const Fminp & f) const
 {    
     return Fper::operator>=(f);
 }

 bool Fminp::operator>=(const Fminp & f) const
 {
   return f <= (*this);
 }

 bool Fminp::operator<(const Fminp & f) const
 {
   return (*this)<=(f) && !((*this)==f);
 }
 
 bool Fminp::operator>(const Fminp & f) const
 {
   return f < (*this);
 }

Fminp Fminp::inf(const Fminp & f) const
{
    return max(f);
}

Fminp Fminp::operator+(const Fminp & f) const
{
    return min(f);
}

Fminp Fminp::operator*(const Fminp & f) const
{
    return composeWith(f);  
}

std::string Fminp::toString() const
{  
   return Fper::toString();
}

Fminp Fminp::lfrac(const Fminp & a) const
{
    /// a\\b = Min {x | a(x)>= b}
    /// forall k, x(k)=min{ kmin | f(kmin)>=g(k)}

    ///returns a\\b    with b=*this
    const Fminp & b=*this;   

    int resDom = b.getDomPer()*a.getCodomPer();    /// result periodicity
    int resCodom = b.getCodomPer()*a.getDomPer();
    std::vector<int> seq(resDom);
    int kin=0,kout,kmin=0;

    //INIT find min kmin | a(kmin)>=b(0)
    if(a(kmin)<b(0)){   while(a(kmin)<b(0)) kmin++; }
    else{               while(a(kmin-1)>=b(0)) kmin--; }

    for(int i=0;i<resDom;i++)
    {
        kout=kmin;
        seq[kin]=kout;
        kin++;
        while(a(kmin)<b(kin)) kmin++;
    }
    Fminp result(resDom,resCodom,seq);
    return result;
}

Fminp Fminp::rfrac(const Fminp & a) const
{
    /// returns b/a    (b=*this)
    const Fminp & b=*this;
   
    int resDom = b.getDomPer()*a.getCodomPer();  // result periodicity
    int resCodom = b.getCodomPer()*a.getDomPer();
    std::vector<int> seq(resDom);
    int kinit,lastK=0,lastKout;
    if(a(0)>0)
    {
        kinit=-1;
        while(a(kinit)>0) kinit--;
    }
    else //a(0)<=0
    {
        kinit=0;
        while(a(kinit+1)<=0) kinit++;
    }
    lastKout = b(kinit);
    seq[0]=lastKout;
    do
    {
        kinit++;
        if(a(kinit)<seq.size())
        {
            if(a(kinit)<a(kinit+1))  // if a  change between consecutives values
            {
                if(a(kinit)>(lastK+1))  // if more than 1
                {            // define intermediate values
                    for(int i=lastK+1;i<a(kinit);i++) seq[i]=lastKout;
                }
                seq[a(kinit)]=b(kinit);
                lastK=a(kinit);
                lastKout = b(kinit);
            }
        }
    }
    while(a(kinit)<=resDom);

    // if sequence is not complete ... (some ending values are missing)
    if(lastK<seq.size()-1)
    {        // fill with the last values
        for(int i=lastK+1;i<seq.size();i++) seq[i]=lastKout;
    }
    Fminp result(resDom,resCodom,seq);
    return result;
}






}
