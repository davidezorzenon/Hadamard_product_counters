#include "EtvoTools.h"
#include <limits>
namespace etvo
{
int Tools::MaxInfinity()
{
    return std::numeric_limits<int>::max();
}
int Tools::MinInfinity()
{
    return std::numeric_limits<int>::min();
}
 
int Tools::gcd(int a, int b)
{	int r;

	while(b>0)
	{
		r = a % b;
		a = b;
		b=r;
	}
	return(a);
}
unsigned int Tools::gcd(unsigned int a, unsigned int b)
{
  unsigned int r;

  while (b>0)
  {
    r = a % b;
    a = b;
    b = r;
  }
  return(a);
}

int Tools::lcm(int a,int b)
{
	int a_sauve,b_sauve;
	a_sauve = a;
	b_sauve = b;
	a=gcd(a,b);
	return((a_sauve*b_sauve)/a);
}
unsigned int Tools::lcm(unsigned int a, unsigned int b)
{
  unsigned int a_sauve, b_sauve;
  a_sauve = a;
  b_sauve = b;
  a = gcd(a, b);
  return((a_sauve*b_sauve) / a);
}

long Tools::gcd(long a, long b)
{	int r;

	while(b>0)
	{
		r = a % b;
		a = b;
		b=r;
	}
	return(a);
}

long Tools::lcm(long a,long b)
{

	int a_sauve,b_sauve;

	a_sauve = a;
	b_sauve = b;

	a=gcd(a,b);

	return((a_sauve*b_sauve)/a);

}



int Tools::Min(int a ,int b)
{
    return a<b ? a:b;
}

int Tools::Max(int a ,int b)
{
    return a>b ? a:b;
}

long Tools::Min(long a ,long b)
{
    return a<b ? a:b;
}

long Tools::Max(long a ,long b)
{
    return a>b ? a:b;
}

}
