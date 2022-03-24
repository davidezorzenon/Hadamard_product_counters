#include "seriesWrapper.h"
#include "polyWrapper.h"
#include "../common/etvoException.h"
#include<vector>
#include<sstream>
using namespace std;


namespace etvo
{
  poly oplus(const poly & p1, const poly & p2)
  {
    return p1+p2;
  }
  poly otimes(const poly & p1, const poly & p2)
  {
    return p1 * p2;
  }
  poly inf(const poly & p1, const poly & p2)
  {
    return p1.inf(p2);
  }

  poly lfrac(const poly & p1, const poly & p2)
  {
    return p1.lfrac(p2);
  }
  poly rfrac(const poly & p1, const poly & p2)
  {
    return p1.rfrac(p2);
  }
  // {{{ global added by Davide Zorzenon
  poly hadamard_prod(const poly & p1, const poly & p2)
  {
    return p1.hadamard_prod(p2);
  }
  poly hadamard_res(const poly & p1, const poly & p2)
  {
    return p1.hadamard_res(p2);
  }
  poly hadamard_dualres(const poly & p1, const poly & p2)
  {
    return p1.hadamard_dualres(p2);
  }
  // }}} global added by Davide Zorzenon

poly poly::E()
{
    return poly(gd::E());
}

poly poly::Epsilon()
{
    return poly();
}

poly poly::Top() { return poly(true); }

poly::poly(bool TopNotE)   // true=Top/false=E
{
  // ISterm = noXtreme
  if (TopNotE)
  {
    setTop();  // Xtreme
    mmgd::poly::operator=(mmgd::gd(global::_INF, global::INF));
  }
  else operator=(poly::E());   // or  E  if !isTop
}
void poly::canon()
{
	cerr << "poly::canon() not implemented!" << endl;
}
std::string poly::ToString() const
{
    if (isEpsilon()) return "eps";
    if (isTop()) return "T";
    stringstream ss;
    unsigned s = getn();
    if (s>0) {
      for (unsigned i = 0; i< s - 1; i++)
        ss << gd(getpol(i)).ToString() << "+";
      ss << gd(getpol(s - 1)).ToString();
    }
    return ss.str();
}

std::ostream& operator<<(std::ostream & f,const poly & p)
{
    f<<p.ToString();
    return f;
}

poly::poly():ISterm(true)  // epsilon
{
}

poly::poly(const mmgd::poly & p):mmgd::poly(p)
{
  if (size() == 1)
  {
    if (mmgd::poly::getpol(0) == gd(global::INF, global::_INF))
      setEpsilon();
    else
      if (mmgd::poly::getpol(0) == gd(global::_INF, global::INF))
        setTop();

  }
}

poly::poly(const gd& m):mmgd::poly(m)
{
  ISterm::_epsNTop = 0;  //considered as Not Extrem first
    if (m.isDegenerate())
  {
    if (m == gd(global::INF, global::_INF))
    {
      setEpsilon();
      return;
    }

    if (m == gd(global::_INF, global::INF))
    {
      setTop();
      return;
    }

    if (m.getd() == global::INF)
    {
      if (m.getg() == global::INF)
      {
        mmgd::poly::getpol(0) = gd(global::INF, global::_INF);
        setEpsilon();
        return;
      }
      else //degenerate
      {
        return;
      }
    }
    if (m.getg() == global::_INF)
    {
      if (m.getd() == global::_INF)
      {
        mmgd::poly::getpol(0) = gd(global::INF, global::_INF);
        setEpsilon();
      }
      else
      {
        mmgd::poly::getpol(0) = gd(global::_INF, global::INF);
        setTop();
      }
      return;
    }
    // All other cases are considered as epsilon
    // g-inf.d-inf, gn.d-inf,g+inf.dt,g+inf.d+inf->epsilon
    mmgd::poly::getpol(0) = gd(global::INF, global::_INF);
    setEpsilon();
  }
}

// MODIFIED 7/12/18 to lie on the poly(gd) constructor
poly & poly::operator=(const gd & m)
{
  poly copy(m); // constructs first a poly from m
  return operator=(copy);
}

poly::poly(long g,long d):mmgd::poly(g,d)
{
}

poly::poly(const std::vector<mmgd::gd> & v):mmgd::poly((unsigned int)v.size(),(gd*)v.data())
{
  if (size() == 1)
  {
    if ((*this)[0] == gd(global::INF, global::_INF)) //eps
    {
      this->setEpsilon();
    }
    else
    {
      if ((*this)[0] == gd(global::_INF, global::INF))
      {
        this->setTop();
      }
    }
  }

}
poly::poly(const std::vector<gd> & v)
{
    if(v.size()==0)
    {
        *this=poly();
    }
    else
    {
    std::vector<mmgd::gd> vC(v.size());
    for(unsigned i=0;i<vC.size();i++)
    {
        vC[i]=v[i];
    }
    poly copie(vC);  // create a poly with the previous constr.
    *this=copie;
    }
}
poly::~poly(){}

bool poly::isEpsilon() const
{
  if (ISterm::isEpsilon()) return true;
  if (ISterm::isTop()) return false;
  if (size() == 1 && getpol(0) == mmgd::gd())
  {
    return true;
  }
  else
  {
    return false;
  }
}

bool poly::isE() const
{
  if (size() == 1 && getpol(0) == gd())
  {
    return true;
  }
  return false;
}

bool poly::isDegenerate() const
{
  if (!isEpsilon() && !isTop())
  {
    for (unsigned i = 0; i < size(); i++)
    {
      if ((*this)[i].isDegenerate()) return true;
    }
  }
  return false;
}


poly & poly::operator=(const poly & p)
{
    ISterm::operator=(p);
    mmgd::poly::operator=(p);
    return *this;
}



gd poly::operator[](unsigned i) const
{
    if(i<size())
    return mmgd::poly::getpol(i);
    else throw etvo::etvoException(1, "poly::op[] Index error");
}

unsigned poly::size() const
{
  return mmgd::poly::getn();
}

bool poly::operator==(const poly  & p) const
{
    mmgd::poly copie(*this);
    return copie==(p);
}

bool poly::operator!=(const poly  & p) const
{
  return !operator==(p);
}



bool poly::operator<=(const poly & p) const
{
    return ((*this)+p)==p;
}

bool poly::operator>=(const poly & p) const
{
    return p<=(*this);
}
 poly poly::operator+(const poly & p) const
 {
   if (isTop() || p.isTop()) return poly::Top();
   if (isEpsilon()) return p;
   if (p.isEpsilon()) return *this;

     poly a(*this);
     poly b(p);
     return mmgd::oplus(a,b);
 }

 void poly::add(const gd & m)
 {
   if (isEpsilon() && m != mmgd::gd())
   {
     ISterm::_epsNTop = 0;
   }
   mmgd::poly::add(m);
 }
 poly poly::operator+(const gd & g) const
 {
   if (isTop()) return poly::Top();
   if (isEpsilon()) return poly(g);
     poly a(*this);
     gd b(g);
     return mmgd::oplus(a,b);
 }


 poly poly::operator*(const poly & p) const
 {
   if (isEpsilon() || p.isEpsilon()) return poly::Epsilon();
   if (isTop() || p.isTop()) return poly::Top();
     poly a(*this);
     poly b(p);
     return mmgd::otimes(a,b);
 }

 poly poly::operator*(const gd & m) const
 {
   if (isEpsilon()) return poly::Epsilon();
   if (isTop()) return poly::Top();

     poly a(*this);
     gd b(m);
     return mmgd::otimes(a,b);
 }

poly poly::inf(const poly & p) const
{
  if (isEpsilon() || p.isEpsilon()) return poly::Epsilon();
  if (isTop()) return p;
  if (p.isTop()) return *this;
     poly a(*this);
     poly b(p);
     return mmgd::inf(a,b);
}

poly poly::inf(const gd & m) const
{
  if (isEpsilon()) return poly::Epsilon();
  if (isTop()) return poly(m);
     poly a(*this);
     gd b(m);
     return mmgd::inf(a,b);
}

poly poly::lfrac(const poly & p) const
{
  return frac(p);
}
poly poly::rfrac(const poly & p) const
{
  return frac(p);
}

poly poly::frac(const poly & p) const
{
  if (isEpsilon() || p.isTop()) return poly::Epsilon();
  if (isTop() || p.isEpsilon()) return poly::Top();

    poly a(*this);
    poly b(p);
    return mmgd::frac(a,b);
}
poly poly::frac(const gd & m) const
{
  if (isEpsilon()) return poly::Epsilon();
  if (isTop()) return poly::Top();
    poly a(*this);
    gd b(m);
    return mmgd::frac(a,b);
}

poly poly::prcaus() const
{
    mmgd::poly copie(*this);
    return mmgd::prcaus(copie);
}
series poly::star() const
{
    poly copie(*this);
	try {
		series res(mmgd::star(copie));
		return res;
	}
	catch (const char * msg)
	{
		throw etvoException(12, string(msg));
	}
}

// |=====================================================================|
// | Hadamard product on polynomials                                     |
// |=====================================================================|
// | Description:														 |
// | New version of Hadamard product, residuation and dual residuation   |
// | of the Hadamard product on polynomials.   							 |
// | Added by Davide Zorzenon (07/03/2020)								 |
// |---------------------------------------------------------------------|
poly poly::hadamard_prod(const poly & p) const
{
//  if (isEpsilon() || p.isTop()) return poly::Epsilon();
//  if (isTop() || p.isEpsilon()) return poly::Top();

    poly a(*this);
    poly b(p);
    return mmgd::hadamard_prod(a,b);
}
poly poly::hadamard_res(const poly & p) const
{
//  if (isEpsilon() || p.isTop()) return poly::Epsilon();
//  if (isTop() || p.isEpsilon()) return poly::Top();

    poly a(*this);
    poly b(p);
    return mmgd::hadamard_res(a,b);
}
poly poly::hadamard_dualres(const poly & p) const
{
//  if (isEpsilon() || p.isTop()) return poly::Epsilon();
//  if (isTop() || p.isEpsilon()) return poly::Top();

    poly a(*this);
    poly b(p);
    return mmgd::hadamard_dualres(a,b);
}



}  /// end etvo
