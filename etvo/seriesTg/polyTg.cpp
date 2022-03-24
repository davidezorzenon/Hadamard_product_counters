#include "polyTg.h"
#include "../common/EtvoTools.h"
#include "../common/etvoException.h"
#include <string>
#include<algorithm>

using namespace std;
using namespace graphicPR;

namespace etvo
{
std::ostream & operator<<(std::ostream & st,const polyTg & p)
{
    st<<p.toString();
    return st;
}

// static functions E/Eps/Top
polyTg polyTg::Epsilon(){  return polyTg(); }

polyTg polyTg::E(){  return polyTg(false); }

polyTg polyTg::Top(){  	return polyTg(true); }

/************ CONSTRUCTORS ***************/
//Epsilon = no Tg term AND ISterm=epsilon
polyTg::polyTg():ISterm(true){}

//Top OR E (Top = no Tg term / E= 1 term)
polyTg::polyTg(bool TopNotE)   // true=Top/false=E
{
  // here ISterm = noXtreme
  if (TopNotE) setTop();  // set Xtreme to Top
  else _poly.push_back(Tg::E());   // or  E  if !isTop      
}

polyTg::polyTg(const Tg & m):_poly(1,m)
{
}

bool compG(Tg m1, Tg m2) 
{ return m1.getG() < m2.getG(); }

// Correction 8/10/18
void polyTg::sort()
{
  //terms are sorted by increasing gamma exponent
  std::sort(_poly.begin(), _poly.end(), compG);
}

// Correction 8/10/18
void polyTg::simplify()  
{
  // assumed sorted before
  if (_poly.size() != 0)
  {
    // for (Tg m : _poly) cout << m << endl;  //print initial terms
    _poly[0].canon();
    for (unsigned i = 1; i<_poly.size(); i++)
    {
      _poly[i].setT_op((_poly[i - 1].getT_op()) + (_poly[i].getT_op()));
      if (_poly[i - 1].getT_op() == _poly[i].getT_op())
      {
        _poly.erase(_poly.begin() + i);
        i--;
      }
      else
      {
        if (_poly[i - 1].getG() == _poly[i].getG())
        {
          _poly.erase(_poly.begin() + i-1);
          i--;
        }
      }
    }
  }
}

// First canonical form = coef are decreasing on Eop
void polyTg::canon()
{
  sort();
  simplify();
}

polyTg::polyTg(const std::vector<Tg> & v) :_poly(v)
{
  canon();  //sort and simplify
}

/*****************************************************/
bool polyTg::isE() const
{
  return (_poly.size() == 1) && _poly[0] == Tg::E();
}

/*****************************************************/

// Added 24/10/18
polyTg polyTg::toPolyTg(const poly & p)
{
  if (p.isEpsilon()) return polyTg::Epsilon();
  if (p.isTop()) return polyTg::Top();
  poly copieP(p);
  polyTg P;

  for (unsigned int i = 0; i < p.getn(); i++)
  {
    gd m = p.getpol(i);
    P = P + Tg(T_op::delta(m.getd()), m.getg());
  }
  return P;
}

// Added 24/10/18
poly polyTg::toPoly() const
{
  if (isEpsilon()) return poly::Epsilon();
  if (isTop()) return poly::Top();
  poly p;
  for (int i = 0; i < _poly.size(); i++)
  {
    p = p + gd( _poly[i].getG(), _poly[i].getT_op().Rw(0));
  }
  return p;
}



polyTg polyTg::operator*(const Tg & m) const
{
  if (isEpsilon()) return polyTg::Epsilon();
  if (isTop()) return polyTg::Top();
  polyTg res(*this);
	for(unsigned i=0;i<res._poly.size();i++)
	{
		//res._poly[i]=Tg(_poly[i].GetT_op()*m.GetT_op(),_poly[i].GetG()+m.GetG());
    res._poly[i] = _poly[i] * m;
	}
  // Is is not sure to be always canonical here 
  // but sorted yesOK
  res.simplify();
	return res;
}

polyTg polyTg::otimes(const Tg & m, const polyTg & p)
{
  if (p.isEpsilon()) return polyTg::Epsilon();
  if (p.isTop()) return polyTg::Top();
  polyTg res(p);
  for (unsigned i = 0; i < res._poly.size(); i++)
  {
    // res._poly[i] = Ed(_poly[i].GetEop()*m.GetEop(), _poly[i].GetD() + m.GetD());
    res._poly[i] = m * p._poly[i];
  }
  // Is is not sure to be always canonical here 
  // but sorted yesOK
  res.simplify();   // Must be simplified (possible equal coefs)
  return res; 
}

polyTg polyTg::otimes(const polyTg & p) const
{
  return (*this)*p;
}

polyTg polyTg::otimesCD(const polyTg & p) const
{
  if (isEpsilon() || p.isEpsilon()) return Epsilon();
  if (isTop() || p.isTop())  return Top();
  unsigned int mb1, mb2;
  getLcmGain(mb1);
  p.getLcmGain(mb2);
  long mul = Tools::lcm((long)mb1, (long)mb2);  
  matrix<poly> Q1 = getCore(mul / mb1);
  matrix<poly> Q2 = p.getCore(mul / mb2);
  matrix<poly> N = polyTg::getMatN(Q2.GetRow());
  matrix<poly> prod = Q1 * N*Q2;  
  return polyTg::coreToPolyTg(prod);
}

polyTg polyTg::operator*(const polyTg & p) const
{
	if(isEpsilon()|| p.isEpsilon()) return Epsilon();
  if (isTop() || p.isTop())  return Top();
	else
	{
		polyTg res;
		for(unsigned i=0;i<p._poly.size();i++)
		{
			res = res + ((*this)*p._poly[i]);
		}
		//res.Canon(); // Normally, not necessary here since + keeps canonicity
		return res;
	}
}
void polyTg::add(const Tg & m)
{
  if (isTop())  return;
  if (isEpsilon())
  {
   (*this)=m;
   return;
  }
    
  unsigned i = 0;
  while (i<_poly.size() && m.getG()>_poly[i].getG()) i++;

  if (i<_poly.size())
  {
    if (m.getG() == _poly[i].getG())
    {
      _poly[i].setT_op(m.getT_op() + _poly[i].getT_op());
    }
    else
    {
      _poly.insert(_poly.begin() + i, m);
    }
  }
  else _poly.push_back(m);
  // _poly is still sorted by increasing delta
  simplify(); // simplification is sufficient  
}

polyTg polyTg::operator+(const Tg & m) const
{
  if (isEpsilon()) return polyTg(m);
  if (isTop())  return Top();

	polyTg res(*this);
	unsigned i=0;
	while(i<_poly.size() && m.getG()>_poly[i].getG()) i++;

	if(i<_poly.size())
	{
	if(m.getG()==res._poly[i].getG())
	{
		res._poly[i].setT_op(m.getT_op()+res._poly[i].getT_op());
	}
	else
	{
		res._poly.insert(res._poly.begin()+i,m);
	}
	}
	else res._poly.push_back(m);
  // _poly is still sorted by increasing delta
	res.simplify(); // simplification is sufficient
	return res;
}

/*version 1
// relies on successive sum of Ed. Not the most efficient
polyTg polyTg::operator+(const polyTg & p) const
{
  // version 1 Deprecated
  if (isTop() || p.isTop()) return polyTg::Top();
  if (isEpsilon()) return p;
  if (p.isEpsilon()) return *this;

	polyTg res(*this);
	for(unsigned i=0;i<p._poly.size();i++)
	{
		res=res+p._poly[i];
	}
	return res;
}*/

polyTg polyTg::oplus(const polyTg & p) const
{
  return (*this) + p;
}

polyTg polyTg::oplusCD(const polyTg & p) const
{
  if (isTop() || p.isTop()) return polyTg::Top();
  if (isEpsilon()) return p;
  if (p.isEpsilon()) return *this;
  unsigned int mb1,mb2;
  getLcmGain(mb1);
  p.getLcmGain(mb2);  
  unsigned int M = Tools::lcm(mb1, mb2);  
  matrix<poly> Q1 = getCore(M / mb1);
  matrix<poly> Q2 = p.getCore(M / mb2);
  matrix<poly> Q = Q1 + Q2;
  return polyTg::coreToPolyTg(Q);
}

/* version2 */
// merges two sorted vectors and simplify
polyTg polyTg::operator+(const polyTg & p) const
{
  if (isTop() || p.isTop()) return polyTg::Top();
  if (isEpsilon()) return p;
  if (p.isEpsilon()) return *this;

  // Merges two polys
  vector<Tg> vM(_poly.size() + p._poly.size());
  merge(_poly.begin(), _poly.end(),
    p._poly.begin(), p._poly.end(), vM.begin(), compG);

  polyTg res(Tg::E()); // To have noXtreme term ! 
  res._poly = vM;  // replaced by vM which is sorted
  res.simplify();  // simplification
  return res;
}


//TODO : to adapt from minmaxGDII
polyTg polyTg::inf(const polyTg & p) const
{
  if (isEpsilon() || p.isEpsilon()) return Epsilon();
  if (isTop()) return p;
  if (p.isTop()) return *this;
  polyTg res;
  
	for(unsigned i=0;i<_poly.size();i++)
	{
		for(unsigned j=0;j<p._poly.size();j++)
		{
			res = res+ _poly[i].inf(p._poly[j]);
		}
	}
	return res;
}

polyTg polyTg::infCD(const polyTg & p) const
{
  if (isEpsilon() || p.isEpsilon()) return Epsilon();
  if (isTop()) return p;
  if (p.isTop()) return *this;
  unsigned int mb1, mb2;
  getLcmGain(mb1);
  p.getLcmGain(mb2);  
  unsigned int M = Tools::lcm(mb1, mb2);  
  matrix<poly> Q1 = getCoreMax(M / mb1);
  matrix<poly> Q2 = p.getCoreMax(M / mb2);
  return polyTg::coreToPolyTg(Q1.inf(Q2));
}

Tg polyTg::operator[](unsigned idx) const
{
	return _poly[idx];
}
unsigned int polyTg::size() const
{
	return (unsigned int)_poly.size();
}

// correction 9/10/18
bool polyTg::isCanon() const
{
  if (_poly.size() >= 2)
  {
    // unsigned i is a problem if size()==0
    for (int i = 0; i < (_poly.size() - 1); i++)
    {
      Tg m1 = _poly[i];
      Tg m2 = _poly[i + 1];
      if (m1.getG() >= m2.getG()) return false;
      if (!(m1.getT_op() < m2.getT_op())) return false;
    }
  }
  return true;
}



std::string polyTg::toString() const
{
	if(_poly.size()==0)
  {	
    if (isEpsilon()) return "eps";
    else return "T";
  }
	else
	{
		string str;
		for(unsigned i=0;i<_poly.size();i++){
			str+=_poly[i].toString();
			if(i!=_poly.size()-1) str+="+";
		}
		return str;
	}
}

std::string polyTg::toStringAsDeltaVar() const
{
  if (_poly.size() == 0)
  {
    if (isEpsilon()) return "eps";
    else return "T";
  }
  else
  {
    string str;
    for (unsigned i = 0; i<_poly.size(); i++) {
      str += _poly[i].toStringAsDeltaVar();
      if (i != _poly.size() - 1) str += "+";
    }
    return str;
  }
}

bool polyTg::operator==(const polyTg & p) const
{
	if(_poly.size()!=p._poly.size()) return false;
	else{
		for(unsigned i=0;i<_poly.size();i++){
			if(!(_poly[i]==p._poly[i]))
			{
				//cout << _poly[i].ToStringOp() << "<>" <<p._poly[i].ToStringOp();
				return false;
			}
		}
		return true;
	}
}

bool polyTg::operator!=(const polyTg & p) const
{
  return !operator==(p);
}


// TODO : adapt the polyEd::operator<= algorithm which is more efficient
bool polyTg::operator<=(const polyTg & p) const
{
    polyTg sum=(*this)+ p;
    return sum==p;
}

bool polyTg::operator>=(const polyTg & p) const
{
   
  return p <= (*this);
}


polyTg polyTg::transientStar(int Tmax) const
{
	polyTg dmax(Tg(dDd(Tmax+10),0));
	polyTg res(Tg(dDd(0),0));
	polyTg AexpN(*this);
	polyTg resPrec;
	res=res+AexpN;
	do
	{
		resPrec=res;
		AexpN=AexpN*(*this);
		res=(res+AexpN).inf(dmax);
	}while(!(res==resPrec));
	res=res.inf(Tg(dDd(Tmax),0));
	return res;
}

Tg polyTg::getFirstDif(const polyTg & p) const
{
  unsigned i = 0;
  while (i < _poly.size() && i < p._poly.size())
  {
    if (!(_poly[i] == p._poly[i])) return _poly[i];
    i++;
  } 
  return Tg();
}

polyTg polyTg::lfrac(const Tg & m) const
{
	if (isTop()) return polyTg::Top();
	if (isEpsilon()) return polyTg::Epsilon();

	polyTg res=*this;

	for(int i=0;i<this->_poly.size();i++)
	{
		res._poly[i]=res._poly[i].lfrac(m);
	}
	res.canon();
	return res;
}


polyTg polyTg::rfrac(const Tg & m) const
{
	if (isTop()) return polyTg::Top();
	if (isEpsilon()) return polyTg::Epsilon();
	polyTg res=*this;

	for(int i=0;i<this->_poly.size();i++)
	{
		res._poly[i]=res._poly[i].rfrac(m);
	}
	res.canon();
	return res;
}

polyTg polyTg::lfrac(const polyTg & p) const
{
	if (isTop() || p.isEpsilon()) return polyTg::Top();
	//else
	if (isEpsilon() || p.isTop()) return polyTg::Epsilon();	
	polyTg res;
	// computation of p\*this classical case
	res=lfrac(p[0]);
	for(int i=1;i<p._poly.size();i++)
	{
		res=res.inf(lfrac(p[i]));
	}
	return res;
}

polyTg polyTg::lfracCD(const polyTg & p) const
{
  if (isTop() || p.isEpsilon()) return polyTg::Top();
  //else
  if (isEpsilon() || p.isTop()) return polyTg::Epsilon();

  unsigned int mb1, mb2;
  getLcmGain(mb1);
  p.getLcmGain(mb2);
  unsigned int mul = Tools::lcm(mb1, mb2);  
  matrix<poly> Q1 = getCoreMax(mul / mb1);
  matrix<poly> Q2 = p.getCoreMax(mul / mb2);
  matrix<poly> prod = Q1.lfrac(Q2);
  return polyTg::coreToPolyTg(prod);
}

polyTg polyTg::rfrac(const polyTg & p) const
{
	if (isTop() || p.isEpsilon()) return polyTg::Top();
	//else
	if (isEpsilon() || p.isTop()) return polyTg::Epsilon();

	polyTg res;
	// computation of *this/p
	res=rfrac(p[0]);

	for(int i=1;i<p._poly.size();i++)
	{
		res=res.inf(rfrac(p[i]));
	}
	return res;
}

polyTg polyTg::rfracCD(const polyTg & p) const
{
  if (isTop() || p.isEpsilon()) return polyTg::Top();
  //else
  if (isEpsilon() || p.isTop()) return polyTg::Epsilon();
  unsigned int mb1, mb2;
  getLcmGain(mb1);
  p.getLcmGain(mb2);
  unsigned int mul = Tools::lcm(mb1,mb2);  
  matrix<poly> Q1 = getCoreMax(mul / mb1);
  matrix<poly> Q2 = p.getCoreMax(mul / mb2);
  matrix<poly> prod = Q1.rfrac(Q2);  
  return polyTg::coreToPolyTg(prod);
}

void polyTg::removeTerm(unsigned idx)
{
  this->_poly.erase(_poly.begin() + idx);
  if (_poly.size() == 0) ISterm::setEpsilon();
}

unsigned polyTg::getPeriodicity() const
{
  unsigned mb;
  getMaxGain(mb);
  return mb;
}

void polyTg::getMaxGain(unsigned int & mb) const
{
  mb = 0;  
  if (!isExtreme())
  {
    for (long i = 0; i<_poly.size(); i++)
    {
      mb = std::max(mb, _poly[i].getT_op().getMB());      
    }
  }
  else   // convention
  {
    mb = 1;    
  }
}

unsigned int polyTg::getMaxGain() const
{
  unsigned mb;
  getMaxGain(mb);
  return mb;
}

void polyTg::getLcmGain(unsigned int & mb) const
{
  mb = 1;
  if (!isExtreme())
  {
    for (long i = 0; i<_poly.size(); i++)
    {
      mb = Tools::lcm(mb, _poly[i].getT_op().getMB());
    }
  }
  else   // convention
  {
    mb = 1;
  }
}

unsigned int polyTg::getLcmGain() const
{
  unsigned int mb;
  getLcmGain(mb);
  return mb;
}

std::vector<Tg> polyTg::getTerms() const
{
  return _poly;
}

etvo::matrix<poly>  polyTg::getMatN(unsigned size)
{
  etvo::matrix<poly>  Em(size, size);
  for (unsigned i = 0; i < size; i++)
  {
    for (unsigned j = 0; j < size; j++)
    {
      if (j <= i) Em(i, j) = gd(0, 0);
      else Em(i, j) = gd(0, -1);
    }
  }
  return Em;
}

matrix<poly> polyTg::getCore(unsigned ratio) const
{
  polyTg pT(*this);
  if (ratio < 1) ratio = 1;
  unsigned int MB;
  pT.getLcmGain(MB);
  unsigned long m = MB * ratio;
  
  // Core decomposition
  //M_m Q B_b
  //with Mm=[Dm|1, d-1Dm|1,  ..., d1-m Dm|1]
  //with Bb=[D1|m d1-m, ... ,D1|m d-1, D1|m]'
  //and Q in MinMax[[g,d]]
  //Mu_m and Beta_b are implicit from the size of Core
  etvo::matrix<poly>  Core(m,m);
  dDd::setCanonForm(1);  // central form for dDd terms

  //Fper::setAutoReduction(false);  // extension is now possible
  for (unsigned i = 0; i < pT.size(); i++)
  {
    // all terms of p are decomposed on terms g^nl mu_M g^nc betâ_B g^nr
    Tg mo = pT[i];
    T_op w;
    pair<unsigned, unsigned> per = mo.getT_op().getPeriodicity();
    if (per.first != m)
    {
      unsigned rat = m / per.first;
      w = mo.getT_op().extendBy(rat); //locally extends
    }
    else w = mo.getT_op();
    vector<dDd> v = w.getTerms();
    int gamma = mo.getG();
    for (dDd term : v)  // all gNg terms in central form
    {
      unsigned  li = -term.getTl();
      unsigned  co = m - 1 + term.getTr();
      gd monom(gamma,term.getTc());
      poly s(monom);
      Core(li, co) = s + Core(li, co);
    }
  }
  //Fper::setAutoReduction(true);
  dDd::setCanonForm(0);  //left form
  return Core;
}
etvo::matrix<poly>  polyTg::getCoreMax(unsigned ratio) const
{
  etvo::matrix<poly>  Core = getCore(ratio);
  etvo::matrix<poly>  N = getMatN(Core.GetRow());
  
  return N * Core*N;
}


polyTg polyTg::coreToPolyTg(const matrix<poly> & core)
{ 
	if (core.GetRow() != core.GetColumn())
	{
		throw etvoException(20, "coreToPolyTg : core must be a square matrix");
	}
	matrix<poly> Q(core); //copy of Core
	int mb = (int)Q.GetRow();
	polyTg result;
	
	unsigned forme = dDd::getCanonForm();
	dDd::setCanonForm(1);

	for (int i = 0; i < mb; i++)
	{
		for (int j = 0; j < mb; j++)
		{	
			if (!Q(i, j).isEpsilon())
			{
				poly tmp =Q(i, j);					
				polyTg pTmp;
				for (unsigned k = 0; k < tmp.getn(); k++)
				{
					Tg mo(dDd(-i, mb, tmp.getpol(k).getd(), j + 1 - mb), tmp.getpol(k).getg());
					pTmp = pTmp + polyTg(mo);
				}					
				result = result + pTmp;
			}
		}
	}
	dDd::setCanonForm(forme);
	return result;
}

polyTg polyTg::toCausal(const polyTg & p)
{
	if (p.isEpsilon()) return polyTg::Epsilon();

	vector<Tg> vTg = p.getTerms();
	for (int i = (int)vTg.size() - 1; i >= 0; i--)
	{
		if (vTg[i].getG() < 0) vTg.erase(vTg.begin() + i);
		else
		{
			if (!(vTg[i].getT_op()>=T_op::delta(0)))  vTg.erase(vTg.begin() + i);
		}		
	}
	if (vTg.size() == 0) return polyTg::Epsilon();
	else return polyTg(vTg);
}

void polyTg::toPov(graphicPR::PovRay & pov, graphicPR::PovRay::Color c)
{
	for (unsigned i = 0; i < _poly.size(); i++)
	{
			_poly[i].toPov(pov, c, NULL, NULL);		
	}
}

/* DEPRECATED 13/2/19
// static function Mu_m Q Beta_b -> seriesEd
polyTg polyTg::coreToPolyTgBis(const matrix<poly> & core)
{ //cout << "Core -> poly " << endl;
if (core.GetRow() != core.GetColumn())
{
throw etvoException(20, "coreToPolyTg : core must be a square matrix");
}
matrix<poly> Q(core); //copy of Core
int mb = (int)Q.GetRow();

polyTg result;
polyTg lfactor, rfactor;
T_op Dm1, D1m;
Fmaxp Rl(1, mb, { 0 });
vector<int> v(mb, 1);
v[0] = 0;
Fmaxp Rr(mb, 1,v);
Dm1.setFromRw(Rl);
D1m.setFromRw(Rr);
Tg dl(Dm1, 0);
Tg dr(D1m, 0);


for (unsigned int r = 0; r < (int)mb; r++)
{
// correction 9/11/18
int copyR = r;
lfactor = Tg(T_op::delta(-copyR),0)*dl;
for (int c = 0; c < (int)mb; c++)
{
rfactor = dr*Tg(T_op::delta(c-mb+1), 0);
if (!Q(r, c).isEpsilon())
{
polyTg tmp = toPolyTg(Q(r, c));
tmp = lfactor * tmp*rfactor;
result = result + tmp;
}
}
}
return result;
}
*/



}
