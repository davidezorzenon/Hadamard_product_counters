#include "seriesWrapper.h"
#include<iostream>
#include <string>
using namespace std;

namespace etvo
{
  series star(const series & s)
  {
    return s.star();
  }

  series oplus(const series & s1, const series & s2)
  {
    return s1 + s2;
  }
  series inf(const series & s1, const series & s2)
  {
    return s1.inf(s2);
  }

  series otimes(const series & s1, const series & s2)
  {
    return s1*s2;
  }

  series lfrac(const series & s1, const series & s2)
  {
    return s1.lfrac(s2);
  }

  series rfrac(const series & s1, const series & s2)
  {
    return s1.rfrac(s2);
  }

  // {{{ global added by Davide Zorzenon
  series hadamard_prod(const series & s1, const series & s2)
  {
    return s1.hadamard_prod(s2);
  }
  series hadamard_res(const series & s1, const series & s2)
  {
    return s1.hadamard_res(s2);
  }
  series hadamard_dualres(const series & s1, const series & s2)
  {
    return s1.hadamard_dualres(s2);
  }
  // }}} global added by Davide Zorzenon

  std::string series::ToString() const
  {
    if (isTop()) return "T";
    if (isEpsilon()) return "eps";
    string str;
    mmgd::serie copie(*this);
    poly pp = copie.getp();
    poly qq = copie.getq();

    if(!(pp==poly::Epsilon()))    str = pp.ToString()+ "+";
    str += "(" + qq.ToString() + ")";
    if(copie.getr()!=gd(0,0) && !isDegenerate())
    str+=".[" + gd(copie.getr()).ToString() + "]* ";
    return str;
  }

std::ostream&  operator<<(std::ostream &flot, const series & s)
{
    flot << s.ToString();
    return flot;
}

series series::Epsilon()
{
    return series();
}

series series::Top()
{
  return series(poly::Top());
}

series series::E()
{
    return series(gd(0,0));
}

series::series():mmgd::serie(),ISterm(true)
{
  // epsilon series p=eps q=eps,r=g0.d0
}

series::series(const gd & m):series(poly(m))
{
}

/* MODIFIED 7/12/18*/
series::series(const poly & p) : ISterm(false)
{
  // here, current series considered as not extreme
  poly copyP(p);
  mmgd::poly pp = copyP;
  serie copyS(pp);
  copyS.canon();  //<- not always called in mmgd!
  getp() = copyS.getp(); // set p,q,r
  getq() = copyS.getq();
  getr() = copyS.getr();
  if (p.isEpsilon()) { setEpsilon();     return; }  // set Xtreme
  if (p.isTop()) { setTop();     return; }// set Xtreme
  if (p.isDegenerate())   getr() = gd(0, global::INF);
}

series::series(const mmgd::serie & s):ISterm(false)
{ mmgd::serie copyS(s);
  copyS.canon();
  poly copyp(copyS.getp());
  poly copyq(copyS.getq());
  gd copyr(copyS.getr());

  if (copyp.isEpsilon() && copyq.isEpsilon())
  {
    getp() = copyp;
    getq() = copyq;
    getr() = mmgd::gd(0, 0);
    setEpsilon();
    return;
  }

  if (copyq.isTop())
  {
    getp() = poly::Epsilon();
    getq() = poly::Top();
    getr() = mmgd::gd(0, 0);
    setTop();
    return;
  }

  if (copyq.isDegenerate())
  {
    getp() = copyp;
    getq() = copyq;
    getr() = mmgd::gd(0,global::INF);
    return;
  }
  getp() = copyp;
  getq() = copyq;
  getr() = copyr;

}

series::series(const poly & p,const poly & q,const gd & r)
{
  mmgd::poly copyp(p);
  mmgd::poly copyq(q);
  mmgd::gd copyr(r);
  mmgd::serie scopy(copyp, copyq, copyr);
  operator=(series(scopy));
}

poly series::getP() const
{
  series copy(*this);
  return poly(copy.getp());
}

poly series::getQ() const
{
  series copy(*this);
  return poly(copy.getq());
}
gd series::getR() const
{
  series copy(*this);
  return gd(copy.getr());
 }


bool series::isE() const
{
  return getR().isE() && getP().isEpsilon() && getQ().isE();
}

bool series::isPoly() const
{
  return getR().isE();
}

bool series::isDegenerate() const
{
  return getR().isDegenerate();
}

bool series::operator==(const series & s) const
{
    mmgd::serie copie(*this);
    mmgd::serie copieS(s);
    return copie==(copieS);
}

bool series::operator!=(const series & s) const
{
  return !operator==(s);
}

bool series::operator<=(const series & s) const
{
    return ((*this)+s)==s;
}
bool series::operator>=(const series & s) const
{
    return s<=(*this);
}


series series::operator+(const series & s) const
{
    if (isTop() || s.isTop()) return series::Top();
    series a(*this);
    series b(s);
    if (isEpsilon()) return b;
    if (s.isEpsilon()) return a;
    return mmgd::oplus(a,b);
}

series series::operator*(const series & s) const
{
    if (isEpsilon() || s.isEpsilon()) return series::Epsilon();
    if (isTop() || s.isTop()) return series::Top();
    series a(*this);
    series b(s);
    return mmgd::otimes(a,b);
}

series series::inf(const series & s) const
{
    if (isEpsilon() || s.isEpsilon()) return series::Epsilon();
    series a(*this);
    series b(s);
    if (s.isTop()) return a;
    if (isTop()) return b;
    return mmgd::inf(a,b);
}

series series::star() const
{
  if (isEpsilon()) return series::E();
  if (isTop()) return series::Top();
   mmgd::serie a=(*this);
   a= mmgd::star(a);
   return series(a);
}

series series::lfrac(const series & s) const
{
  return frac(s);
}

series series::rfrac(const series & s) const
{
  return frac(s);
}

series series::frac(const series & s) const
{
	if (isTop() || s.isEpsilon()) return series::Top();
	//else
	if (isEpsilon() || s.isTop()) return series::Epsilon();

   series a(*this);
   series b(s);
    return mmgd::frac(a,b);
}

series series::frac(const gd & m) const
{
	if (isTop()) return series::Top();
    if (isEpsilon()) return series::Epsilon();
    series a(*this);
    gd b(m);
    return mmgd::frac(a,b);
}

series series::frac(const poly & pp) const
{
	if (isTop() || pp.isEpsilon()) return series::Top();
	//else
	if (isEpsilon() || pp.isTop()) return series::Epsilon();
    series a(*this);
    poly b(pp);
    return mmgd::frac(a,b);
}

series series::prcaus() const
{
    if (isEpsilon()) return series::Epsilon();
    series copy(*this);
    return mmgd::prcaus(copy);
}

// |===================================================================|
// | Hadamard product on series                                        |
// |===================================================================|
// | Description:													   |
// | New version of Hadamard product, residuation and dual residuation |
// | of the Hadamard product on series.           					   |
// | Added by Davide Zorzenon (07/03/2020)							   |
// |-------------------------------------------------------------------|
series series::hadamard_prod(const series & s) const
{
   series a(*this);
   series b(s);
    return mmgd::hadamard_prod(a,b);
}
series series::hadamard_res(const series & s) const
{
   series a(*this);
   series b(s);
    return mmgd::hadamard_res(a,b);
}
series series::hadamard_dualres(const series & s) const
{
   series a(*this);
   series b(s);
    return mmgd::hadamard_dualres(a,b);
}

}
