#include "Fmaxp.h"
#include "Fminp.h"
#include "../common/EtvoTools.h"
#include "../common/etvoException.h"
#include <iostream>
 
using namespace std;

namespace etvo
{

Fmaxp Fmaxp::E()
{
  return Fmaxp();
  /* Simplification 27/11/18
      int dP = 1;
     int codP =1;
     std::vector<int> seq(dP,0);
     return Fmaxp(dP,codP,seq);*/
}

Fmaxp::Fmaxp():Fper()
{
}

Fmaxp::Fmaxp(int dP,int codP,const std::vector<int> & seq):Fper(dP,codP,seq)
{
    //ctor
}

Fmaxp::Fmaxp(const Fper & f):Fper(f)
{
}

Fmaxp Fmaxp::min(const Fmaxp & f) const
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
        return Fmaxp(dP,codP,seq);
    }
    else
    {
        throw etvoException(1,"FMaxp::Min : different slopes, no computation!");
    }
}

Fmaxp Fmaxp::max(const Fmaxp & f) const
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
        return Fmaxp(dP,codP,seq);
    }
    else
    {
        throw etvoException(1,"FMaxp::Max : different slopes, no computation!");
    }
}


Fmaxp Fmaxp::inf(const Fmaxp & f) const
{
    return min(f);
}

Fmaxp Fmaxp::operator+(const Fmaxp & f) const
{

    return max(f);
}

Fmaxp Fmaxp::operator*(const Fmaxp & f) const
{
   return composeWith(f);   
}

bool Fmaxp::operator==(const Fmaxp & f) const
 {   
     return Fper::operator==(f);
 }

bool Fmaxp::operator!=(const Fmaxp & f) const
{
  return Fper::operator!=(f);
}

 bool Fmaxp::operator<=(const Fmaxp & f) const
 {
    return Fper::operator<=(f);
 }

 // Correction 8/10/18 -> uses <=
 bool Fmaxp::operator>=(const Fmaxp & f) const
 {
    return f<=(*this);
 }

 // Added 8/10/18 -
 bool Fmaxp::operator<(const Fmaxp & f) const
 {
   return (*this) <= (f) && !((*this) == f);
 }

 // Added 8/10/18 -
 bool Fmaxp::operator>(const Fmaxp & f) const
 {
   return f < (*this);
 }

std::string Fmaxp::toString() const
{  
    return Fper::toString();
}

Fmaxp Fmaxp::lfrac(const Fmaxp & a) const
{
    /// a\\b = Max {x | a(x)<= b}
    /// forall t, x(t)=max{ tmax | f(tmax)<=g(t)}
    ///returns a\\b    with b=*this
    const Fmaxp & b=*this;
    
    int resDom = b.getDomPer()*a.getCodomPer();    // result periodicity
    int resCodom = b.getCodomPer()*a.getDomPer();
    std::vector<int> seq(resDom);
    int tin=0,tout,tmax=0;

    //INIT
    if(a(tmax)>b(0)){   while(a(tmax)>b(0)) tmax--; }
    else{               while(a(tmax+1)<=b(0)) tmax++; }

    for(int i=0;i<resDom;i++)
    {
        tout=tmax;
        seq[tin]=tout;
        tin++;
        while(a(tmax+1)<=b(tin)) tmax++;
    }
    Fmaxp result(resDom,resCodom,seq);
    return result;
}

Fmaxp Fmaxp::rfrac(const Fmaxp & a) const
{   
    ///returns b/a    (b=*this)
    const Fmaxp & b=*this;
   
    int resDom = b.getDomPer()*a.getCodomPer();  // result periodicity
    int resCodom = b.getCodomPer()*a.getDomPer();
    std::vector<int> seq(resDom);
    int tinit=0,lastT,lastTout;
    // find the least tinit s.t. a(tinit)>=resDom
    if(a(tinit)<resDom)
    {
        while(a(tinit)<resDom) tinit++;
    }
    else //a(tinit)>=resDom
    {
        while(a(tinit-1)>=resDom) tinit--;
    }

    lastT=a(tinit);
    lastTout=b(tinit);
    do
    {
        if(a(tinit)>=0 && a(tinit)<resDom)
        {
            for(int i=a(tinit)+1;i<Tools::Min(lastT,resDom);i++)
            {
               seq[i]=lastTout;
            }
            seq[a(tinit)]=b(tinit);
            lastT=a(tinit);
            lastTout=b(tinit);
        }
        tinit--;
    }while(a(tinit)>=0);

    /// Fill the begining if not complete
     for(int i=0;i<Tools::Min(lastT,resDom);i++)
     {
        seq[i]=lastTout;
    }
    return Fmaxp(resDom,resCodom,seq);
}

}
