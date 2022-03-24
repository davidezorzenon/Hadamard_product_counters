#include "polyWrapper.h"
#include "gdWrapper.h"
#include "../common/EtvoTools.h"
#include <sstream>
using namespace std;

namespace etvo
{


gd gd::E()
 {
     return gd(0,0);
 }

gd::gd():mmgd::gd(0, 0)
{}

gd::gd(long g,long d):mmgd::gd(g,d){}

gd::gd(const gd & m):mmgd::gd(m){}

gd::gd(const mmgd::gd & m):mmgd::gd(m){}

gd & gd::operator=(const gd & m)
{
    mmgd::gd::operator=(m);
    return *this;
}

 gd gd::operator*(const gd & m) const
 {
     return mmgd::otimes(*this,m);
 }

long gd::getg() const
{
    return g;
}
long gd::getd() const
{
    return d;
}


bool gd::operator==(const gd & m) const
{
    return (g==m.g) && (d==m.d);
}
bool gd::operator!=(const gd & m) const
{
  return !((*this)==m);
}

bool gd::operator>=(const gd & m) const
{
   return (g<=m.g) && (d>=m.d);
}
bool gd::operator<=(const gd & m) const
{
   return m>=(*this);
}


bool gd::isE() const
{
  return g == 0 && d == 0;
}

bool gd::isDegenerate() const
{
  return g == global::INF || d == global::INF || g == global::_INF || d == global::_INF;
}


gd gd::inf(const gd & m) const
{
    return gd(Tools::Max(g,m.g),Tools::Min(d,m.d));
}


gd gd::frac(const gd & m) const
{
   return mmgd::frac(*this,m);
}

poly gd::operator+(const gd & m) const
{
    poly courant(*this);
    return courant+m;
}
poly gd::operator+(const poly & p) const
{
    poly courant(*this);
    return courant+p;
}

poly gd::operator*(const poly & p) const
{
  poly courant(*this);
  return courant*p;
}

 std::ostream& operator<<(std::ostream& f, const gd& m)
 {
     f<<m.ToString();
     return f;
 }

 std::string gd::ToString() const
 {
   stringstream ss;
   if (getg() != global::INF && getg() != global::_INF)
     ss << "g" << getg();
   else
   {
     if (getg()== global::INF)
      ss << "g+inf";
     else
       ss << "g-inf";
   }
   if (getd() != global::INF && getd() != global::_INF)
    ss << ".d" << getd();
   else
   {
     if (getd() == global::INF)
       ss << ".d+inf";
     else
       ss << ".d-inf";
   }
   return ss.str();
 }

// |===============================================================|
// | Hadamard product on monomials                                 |
// |===============================================================|
// | Description:												   |
// | New version of Hadamard product, residuation and dual		   |
// | residuation of the Hadamard product on monomials.			   |
// | Added by Davide Zorzenon (07/03/2020)						   |
// |---------------------------------------------------------------|

gd gd::hadamard_prod(const gd & m) const
{
    return mmgd::hadamard_prod(*this,m);
}
gd gd::hadamard_res(const gd & m) const
{
    return mmgd::hadamard_res(*this,m);
}
gd gd::hadamard_dualres(const gd & m) const
{
    return mmgd::hadamard_dualres(*this,m);
}

}
