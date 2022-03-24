#include "seriesEd.h"
#include "polyEd.h"
#include "../common/EtvoTools.h"
#include <string>
#include <algorithm>
#include "../common/etvoException.h"
#include "../wrapperMMGD/matrixWrapper.h"
using namespace std;
using namespace graphicPR;

namespace etvo
{
  std::ostream & operator<<(std::ostream & st, const polyEd & p)
  {
    st << p.toString();
    return st;
  }

  // static functions E/Eps/Top
  polyEd polyEd::Epsilon() { return polyEd(); }

  polyEd polyEd::E() { return polyEd(false); }

  polyEd polyEd::Top() { return polyEd(true); }

  /************ CONSTRUCTORS ***************/
  //Epsilon = no Ed term AND ISterm=epsilon
  polyEd::polyEd() :ISterm(true) { }

  //Top OR E (Top = no Ed term / E= 1 term)
  polyEd::polyEd(bool TopE)   // true=Top/false=E 
  {
    // here ISterm = noXtreme
    if (TopE) setTop();  // set Xtreme to Top
    else _poly.push_back(Ed());   // or  E  if !isTop      
  }

  polyEd::polyEd(const Ed & m) :_poly(1, m)
  {
  }


  bool compD(Ed m1, Ed m2) { return m1.getD() < m2.getD(); }

  // Correction 7/10/18
  void polyEd::sort()
  {
    //terms are sorted by increasing delta exponent
    std::sort(_poly.begin(), _poly.end(), compD);
  }

  // Correction 7/10/18
  void polyEd::simplify()
  {
    // assumed sorted before
    if (_poly.size() != 0)
    {
      // for (Ed m : _poly) cout << m << endl;  //print initial terms
      _poly[_poly.size() - 1].canon();
      for (unsigned int i = (unsigned int)(_poly.size() - 1); i > 0; i--)
      {		 
		 if (_poly[i - 1].getD() == _poly[i].getD())  // two consecutive terms with the same exponent in delta
		 {
			 _poly[i - 1].setE_op((_poly[i - 1].getE_op()) + (_poly[i].getE_op()));
			 _poly.erase(_poly.begin() + i);
		 }
		 else  // two consecutive terms with different exponents in delta
		 {
			 _poly[i - 1].setE_op((_poly[i - 1].getE_op()) + (_poly[i].getE_op()));
			 if (_poly[i - 1].getE_op() == _poly[i].getE_op())
			 {
				 _poly[i - 1].setD(_poly[i].getD());
				 _poly.erase(_poly.begin() + i);
			 }			 
		 }
      }
    }
  }

  /*
  // Added 15/10/18 But not correct yet (to be fixed)
  void polyEd::SimplifyUpTo(unsigned idx)
  {
    if (_poly.size() != 0)
    {
      if (idx < _poly.size())
      {
        _poly[idx].Canon();
        for (unsigned i = idx; i > 0; i--)
        {
          _poly[i - 1].SetE_op((_poly[i - 1].GetE_op()) + (_poly[i].GetE_op()));
          if (_poly[i - 1].GetE_op() == _poly[i].GetE_op())
          {
            _poly[i - 1].SetD(_poly[i].GetD());
            _poly.erase(_poly.begin() + i);
          }
          else
          {
            if (_poly[i - 1].GetD() == _poly[i].GetD())
            {
              _poly.erase(_poly.begin() + i);
            }
          }
        }
      }
    }
  }
  */


  // First canonical form = coef are decreasing on Eop
  void polyEd::canon()
  {
    sort();
    simplify();
  }

  polyEd::polyEd(const std::vector<Ed> & v) :_poly(v)
  {
    canon();  //sort and simplify
  }

  /*****************************************************/
  bool polyEd::isE() const
  {
    return (_poly.size() == 1) && _poly[0] == Ed::E();
  }

  // Correction 24/10/18
  polyEd polyEd::toPolyEd(const poly & p)
  {
    if (p.isEpsilon()) return polyEd::Epsilon();
    if (p.isTop()) return polyEd::Top();  // added 24/10/18
    poly copieP(p);
    polyEd P;

    for (unsigned int i = 0; i < p.getn(); i++)
    {
      gd m = p.getpol(i);
      P = P + Ed(E_op::Gamma(m.getg()), m.getd());
    }
    return P;
  }

  // Correction 24/10/18
  poly polyEd::toPoly() const
  {
    if (isEpsilon()) return poly::Epsilon();
    if (isTop()) return poly::Top();
    poly p;
    for (int i = 0; i < _poly.size(); i++)
    {
      p = p + gd(_poly[i].getE_op().Fw(0), _poly[i].getD());
    }
    return p;
  }


  polyEd polyEd::toCausal(const polyEd & p)
  {
    if (p.isEpsilon()) return polyEd::Epsilon();

    vector<Ed> vEd = p.getTerms();
    for (int i = (int)vEd.size() - 1; i >= 0; i--)
    {
      if (vEd[i].getD() < 0) vEd.erase(vEd.begin() + i);
    }
    if (vEd.size() == 0) return polyEd::Epsilon();
    else return polyEd(vEd);
  }


  /*****************************************************/
  polyEd polyEd::otimes(const Ed & m, const polyEd & p)
  {
    if (p.isEpsilon()) return polyEd::Epsilon();
    if (p.isTop()) return polyEd::Top();
    polyEd res(p);
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

  polyEd polyEd::operator*(const Ed & m) const
  {
    if (isEpsilon()) return polyEd::Epsilon();
    if (isTop()) return polyEd::Top();
    polyEd res(*this);
    for (unsigned i = 0; i < res._poly.size(); i++)
    {
      // res._poly[i] = Ed(_poly[i].GetEop()*m.GetEop(), _poly[i].GetD() + m.GetD());
      res._poly[i] = _poly[i] * m;
    }
    // Is is not sure to be always canonical here 
    // but sorted yesOK
    res.simplify();   // Must be simplified (possible equal coefs)
    return res;
  }

  /* Version 1 OK Works fine, but possibly a little bit less efficient*/
  /*
  polyEd polyEd::operator*(const polyEd & p) const
  {
    if (isEpsilon() || p.isEpsilon()) return Epsilon();
    if (isTop() || p.isTop())  return Top();
    else
    {
      polyEd res;
      for (unsigned i = 0; i < p._poly.size(); i++){
        res = res + ((*this)*p._poly[i]);
      }
      return res;
    }
  }
  */

  /* Version 2 : adds terms into an array and then creats a polyEd*/
  
  polyEd polyEd::operator*(const polyEd & p) const
  {
    if (isEpsilon() || p.isEpsilon()) return Epsilon();
    if (isTop() || p.isTop())  return Top();
    else
    {
      vector<Ed> vEd;
      for (unsigned i = 0; i < p._poly.size(); i++)
      {
        auto v = ((*this)*p._poly[i]).getTerms();
        vEd.insert(vEd.end(), v.begin(), v.end());
      }
      polyEd res(vEd);
      return res;
    }
  }
  
  polyEd polyEd::otimes(const polyEd & p) const
  {
    return (*this)*p;
  }

  polyEd polyEd::otimesCD(const polyEd & p) const
  {
    if (isEpsilon() || p.isEpsilon()) return Epsilon();
    if (isTop() || p.isTop())  return Top();
    unsigned int mu1, be1, mu2, be2;
    getLcmGain(mu1, be1);
    p.getLcmGain(mu2, be2);
    long mul = Tools::lcm((long)be1, (long)mu2);   
    matrix<poly> Q1 = getCore(mul / be1);
    matrix<poly> Q2 = p.getCore(mul / mu2);
    matrix<poly> N = polyEd::getMatN(Q2.GetRow());
    matrix<poly> prod = Q1 * N*Q2;    
    return polyEd::coreToPolyEd(prod);
  }

  polyEd polyEd::operator+=(const Ed & m)
  {
	  add(m);
	  return *this;
  }

  // could be improved by simplifying only UpTo i
  // Not all the vector
  void polyEd::add(const Ed & m)
  {
    if (isTop()) return;
    if (isEpsilon())
    {
      (*this) = m;
      return;
    }
    unsigned i = 0;
    while (i<_poly.size() && m.getD()>_poly[i].getD()) i++;
    if (i < _poly.size())
    {
      if (m.getD() == _poly[i].getD())
      {
        _poly[i].setE_op(m.getE_op() + _poly[i].getE_op());
      }
      else
      {
        _poly.insert(_poly.begin() + i, m);
      }
    }
    else _poly.push_back(m);
    // _poly is still sorted by increasing delta

    /*** TODO  IMPROVE THE SIMPLIFICATION
    // could be improved by SimplifyUpTo(i)
    // Not all the _poly has to be updated
    //if(i<_poly.size()) SimplifyUpTo(i);  // simplification is sufficient
   // else Simplify();  ****/

    simplify();
  }

  polyEd polyEd::operator+(const Ed & m) const
  {
    if (isEpsilon()) return polyEd(m);
    if (isTop())  return Top();

    polyEd res(*this);
    unsigned i = 0;
    while (i<_poly.size() && m.getD()>_poly[i].getD()) i++;

    if (i < _poly.size())
    {
      if (m.getD() == res._poly[i].getD())
      {
        res._poly[i].setE_op(m.getE_op() + res._poly[i].getE_op());
      }
      else
      {
        res._poly.insert(res._poly.begin() + i, m);
      }
    }
    else res._poly.push_back(m);

    /*** TODO  IMPROVE THE SIMPLIFICATION
    // _poly is still sorted by increasing delta
    //if (i<res._poly.size()) res.SimplifyUpTo(i);  // simplification is sufficient
    //else res.Simplify();
    ****/

    res.simplify();
    return res;
  }

  /* version 1 Available in etvo v13
   relies on successive sum of Ed. Not the most efficient
  */
  /* version2 */
  // merges two sorted vectors and simplify
  polyEd polyEd::operator+(const polyEd & p) const
  {
    if (isTop() || p.isTop()) return polyEd::Top();
    if (isEpsilon()) return p;
    if (p.isEpsilon()) return *this;

    // Merge two polys
    vector<Ed> vM(_poly.size() + p._poly.size());
    merge(_poly.begin(), _poly.end(),
      p._poly.begin(), p._poly.end(), vM.begin(), compD);

    polyEd res(Ed::E()); // To have noXtreme term !
    res._poly = vM;  // replaced by vM which is sorted
    res.simplify();  // simplification	
    return res;
  }

  
  polyEd polyEd::oplus(const polyEd & p) const
  {
    return (*this) + p;
  }

  polyEd polyEd::oplusCD(const polyEd & p) const
  {
    if (isTop() || p.isTop()) return polyEd::Top();
    if (isEpsilon()) return p;
    if (p.isEpsilon()) return *this;
    unsigned int m1, b1, m2, b2;
    getLcmGain(m1, b1);
    p.getLcmGain(m2, b2);
    if ((m1*b2) != (m2*b1))
    {
      throw etvoException(310, "Only the sum of polyEd with equal gain is allowed!");
    }
    unsigned int M = Tools::lcm(m1, m2);
    //matrix<series> Q1 = GetCoreMax(M / m1);
    matrix<poly> Q1 = getCore(M / m1);
    matrix<poly> Q2 = p.getCore(M / m2);
    matrix<poly> Q = Q1 + Q2;
    return polyEd::coreToPolyEd(Q);
  }

  //TODO : to adapt from minmaxGDII
  polyEd polyEd::inf(const polyEd & p) const
  {
    if (isEpsilon() || p.isEpsilon()) return Epsilon();
    if (isTop()) return p;
    if (p.isTop()) return *this;
    polyEd res;

    for (unsigned i = 0; i < _poly.size(); i++)
    {
      for (unsigned j = 0; j < p._poly.size(); j++)
      {
        res = res + _poly[i].inf(p._poly[j]);
      }
    }
    return res;
  }

  polyEd polyEd::infCD(const polyEd & p) const
  {
    if (isEpsilon() || p.isEpsilon()) return Epsilon();
    if (isTop()) return p;
    if (p.isTop()) return *this;
    unsigned int m1, b1, m2, b2;
    getLcmGain(m1, b1);
    p.getLcmGain(m2, b2);
    if ((m1*b2) != (m2*b1))
    {
      throw etvoException(310, "Only the inf of polyEd with equal gain is allowed!");
    }
    unsigned int M = Tools::lcm(m1, m2);
    //matrix<series> Q1 = GetCoreMax(M / m1);
    matrix<poly> Q1 = getCoreMax(M / m1);
    matrix<poly> Q2 = p.getCoreMax(M / m2);
    return polyEd::coreToPolyEd(Q1.inf(Q2));
  }

  Ed polyEd::operator[](unsigned idx) const
  {
    //return _poly[idx];
    return _poly.at(idx);
  }
  unsigned int polyEd::size() const
  {
    return (unsigned int)_poly.size();
  }
  // correction 9/10/18
  bool polyEd::isCanon() const
  {
    // unsigned i is a problem if size()==0
    if (_poly.size() >= 2)
    {
      for (int i = 0; i < (_poly.size() - 1); i++)
      {
        Ed m1 = _poly[i];
        Ed m2 = _poly[i + 1];
        if (m1.getD() >= m2.getD()) return false;
        if (!(m1.getE_op() > m2.getE_op())) return false;
      }
    }
    return true;
  }
  
  std::string polyEd::toString() const
  {
    if (_poly.size() == 0)
    {
      if (isEpsilon()) return "eps";
      else return "T";
    }
    else
    {
      string str;
      for (unsigned i = 0; i < _poly.size(); i++) {
        str += _poly[i].toString();
        if (i != _poly.size() - 1) str += "+";
      }
      return str;
    }
  }

  std::string polyEd::toStringAsMuVar() const
  {
    if (_poly.size() == 0)
    {
      if (isEpsilon()) return "eps";
      else return "T";
    }
    else
    {
      string str;
      for (unsigned i = 0; i < _poly.size(); i++) {
        str += _poly[i].toStringAsMuVar();
        if (i != _poly.size() - 1) str += "+";
      }
      return str;
    }
  }

  bool polyEd::operator==(const polyEd & p) const
  {
    if (_poly.size() != p._poly.size()) return false;
    else {
      for (unsigned i = 0; i < _poly.size(); i++) 
      {
        if (_poly[i] != p._poly[i])
        {          
          return false;
        }
      }
      return true;
    } 
  }

  bool polyEd::operator!=(const polyEd & p) const
  {
    return !((*this) == p);
  }

  /* Basic version a<=b <-> a+b==b  [Not the more efficient]
  // Replaced by a more efficient version in Nov. 2018
  bool polyEd::operator<=(const polyEd & p) const
  {
    polyEd sum = (*this) + p;
    return sum == p;
  }
  */

  // 12/11/18 Specific algorithm
  bool polyEd::operator<=(const polyEd & p) const
  {
    if (isEpsilon() || p.isTop()) return true;
    if (p.isEpsilon()) return false;
    if (isTop()) return false;
    const polyEd & pT = (*this);
    int iT = 0, iP = 0;
    do
    {
      while (p[iP].getD() < pT[iT].getD())
      {
        iP++;
        if (iP >= (int) p.size()) return false;
      }
      if (!(pT[iT].getE_op() <= p[iP].getE_op())) return false;
      iT++;
    } while (iT < (int)pT.size());
    return true;
  }

  bool polyEd::operator>=(const polyEd & p) const
  {
    return p<=(*this);
  }

  Ed polyEd::getFirstDif(const polyEd & p) const
  {
    unsigned i = 0;
    while (i < _poly.size() && i < p._poly.size())
    {
      if (!(_poly[i] == p._poly[i])) return _poly[i];
      i++;
    }
    return Ed();
  }


  polyEd polyEd::transientStar(int Tmax) const
  {
    polyEd dmax(Ed::g(0)*Ed::d(Tmax + 10));
    polyEd res(Ed::g(0)*Ed::d(0));
    polyEd AexpN(*this);
    polyEd resPrec;
    res = res + AexpN;
    do
    {
      resPrec = res;
      AexpN = AexpN * (*this);
      res = (res + AexpN).inf(dmax);
    } while (!(res == resPrec));
    res = res.inf(Ed(E_op::Gamma(0), Tmax));
    return res;
  }


  polyEd polyEd::lfrac(const Ed & m) const
  {	  
    if (isTop()) return polyEd::Top();
	if (isEpsilon()) return polyEd::Epsilon();

    polyEd res = *this;

    for (int i = 0; i < this->_poly.size(); i++)
    {
      res._poly[i] = res._poly[i].lfrac(m);
    }
    res.canon();
    return res;
  }


  polyEd polyEd::rfrac(const Ed & m) const
  {   
    if (isTop()) return polyEd::Top();
	if (isEpsilon()) return polyEd::Epsilon();
    polyEd res = *this;

    for (int i = 0; i < this->_poly.size(); i++)
    {
      res._poly[i] = res._poly[i].rfrac(m);
    }
    res.canon();
    return res;
  }

  polyEd polyEd::lfrac(const polyEd & p) const
  {
    if (isTop() || p.isEpsilon()) return polyEd::Top();
    //else
    if (isEpsilon() || p.isTop()) return polyEd::Epsilon();

    polyEd res;
    // computation of p\*this classical case
    res = lfrac(p[0]);
    for (int i = 1; i < p._poly.size(); i++)
    {
      res = res.inf(lfrac(p[i]));
    }
    return res;
  }
  polyEd polyEd::lfracCD(const polyEd & p) const
  {
    if (isTop() || p.isEpsilon()) return polyEd::Top();
    //else
    if (isEpsilon() || p.isTop()) return polyEd::Epsilon();

    unsigned int mu1, be1, mu2, be2;
    getLcmGain(mu1, be1);
    p.getLcmGain(mu2, be2);
    unsigned int mul = Tools::lcm(mu1, mu2);   
    matrix<poly> Q1 = getCoreMax(mul / mu1);
    matrix<poly> Q2 = p.getCoreMax(mul / mu2);
    matrix<poly> prod = Q1.lfrac(Q2);    
    return polyEd::coreToPolyEd(prod);
  }

  polyEd polyEd::rfrac(const polyEd & p) const
  {   
    if (isTop() || p.isEpsilon()) return polyEd::Top(); 
	//else
    if (isEpsilon() || p.isTop()) return polyEd::Epsilon();
    polyEd res;
    // computation of *this/p
    res = rfrac(p[0]);
    for (int i = 1; i < p._poly.size(); i++)
    {
      res = res.inf(rfrac(p[i]));
    }
    return res;
  }
  polyEd polyEd::rfracCD(const polyEd & p) const
  {
    if (isTop() || p.isEpsilon()) return polyEd::Top();
    //else
    if (isEpsilon() || p.isTop()) return polyEd::Epsilon();
    unsigned int mu1, be1, mu2, be2;
    getLcmGain(mu1, be1);
    p.getLcmGain(mu2, be2);
    unsigned int mul = Tools::lcm(be1, be2);
    //cout << "mul=" << mul << endl;
    matrix<poly> Q1 = getCoreMax(mul / be1);
    matrix<poly> Q2 = p.getCoreMax(mul / be2);
    matrix<poly> prod = Q1.rfrac(Q2);
    //cout << "size core = " << prod.GetRow() << "x" << prod.GetColumn() << endl;
    return polyEd::coreToPolyEd(prod);
  }

  void polyEd::removeTerm(unsigned idx)
  {
    this->_poly.erase(_poly.begin() + idx);
    if (_poly.size() == 0) ISterm::setEpsilon();
  }

  std::pair<unsigned int, unsigned int> polyEd::getPeriodicity() const
  {
    unsigned m, b;
    getLcmGain(m, b);
    return pair<unsigned, unsigned>(b, m);
  }

  std::vector<Ed> polyEd::getTerms() const
  {
    return this->_poly;
  }

  void polyEd::getMaxGain(unsigned int & mu, unsigned int & beta) const
  {
    beta = 0;
    mu = 0;
    if (!isExtreme())
    {
      for (long i = 0; i < _poly.size(); i++)
      {
        beta = std::max(beta, _poly[i].getE_op().getB());
        mu = std::max(mu, _poly[i].getE_op().getM());
      }
    }
    else   // convention
    {
      beta = 1;
      mu = 1;
    }
  }

  void polyEd::getLcmGain(unsigned int & mu, unsigned int & beta) const
  {
    //the least common multiple of all gains
    unsigned int b = 1;
    unsigned int m = 1;
    if (!isEpsilon())
    {
      for (long i = 0; i < _poly.size(); i++)
      {
        b = Tools::lcm(b, _poly[i].getE_op().getB());
        m = Tools::lcm(m, _poly[i].getE_op().getM());
      }
      mu = m;
      beta = b;
    }
  }

  etvo::matrix<poly>  polyEd::getMatN(unsigned size)
  {
    etvo::matrix<poly>  Em(size, size);
    for (unsigned i = 0; i < size; i++)
    {
      for (unsigned j = 0; j < size; j++)
      {
        if (j <= i) Em(i, j) = gd(0, 0);
        else Em(i, j) = gd(1, 0);
      }
    }
    return Em;
  }
  etvo::matrix<poly>  polyEd::getCoreMax(unsigned ratio) const
  {
    etvo::matrix<poly>  Core = getCore(ratio);
    etvo::matrix<poly>  Em = getMatN(Core.GetRow());
    etvo::matrix<poly>  Eb = getMatN(Core.GetColumn());
    return Em * Core*Eb;
  }

  /* Adapted from the code of seriesEd::getCore*/
  /* SPlit into getCore / getCoreMax*/
  matrix<poly> polyEd::getCore(unsigned ratio) const
  {
    polyEd pT(*this);
    if (ratio < 1) ratio = 1;
    unsigned int M, B;
    pT.getLcmGain(M, B);
    unsigned long m = M * ratio;
    unsigned long b = B * ratio;

    // Core decomposition
    //Mu_m Q Beta_b
    //with Mu_m=[mu_m g^1mu_m g^2mu_m ... g^(m-1)mu_m]
    //with Beta_b=[beta_b g^(b-1) ... beta_b g^1 beta_b]'
    //and Q in MinMax[[g,d]]
    //Mu_m and Beta_b are implicit from the size of Core
    etvo::matrix<poly>  Core(m, b);
    gNg::setCanonForm(1);  // central form for gNg terms

    //Fper::setAutoReduction(false);  // extension is now possible
    for (unsigned i = 0; i < pT.size(); i++)
    {
      // all terms of p are decomposed on terms g^nl mu_M g^nc betâ_B g^nr
      Ed mo = pT[i];
      E_op w;
      pair<unsigned, unsigned> per = mo.getE_op().getPeriodicity();
      if (per.first != b)
      {
        unsigned rat = b / per.first;
        w = mo.getE_op().extendBy(rat);
      }
      else w = mo.getE_op();
      vector<gNg> v = w.getTerms();
      int delta = mo.getD();
      for (gNg term : v)  // all gNg terms in central form
      {
        unsigned  li = term.getNl();
        unsigned  co = b - 1 - term.getNr();
        gd monom(term.getNc(), delta);
        poly s(monom);
        Core(li, co) = s + Core(li, co);
      }
    }
   // Fper::setAutoReduction(true);
    gNg::setCanonForm(0);  //left form
    return Core;
  }

  // static function Mu_m Q Beta_b -> seriesEd
  polyEd polyEd::coreToPolyEd(const matrix<poly> & core)
  { //cout << "Core -> poly " << endl;
    matrix<poly> Q(core); //copy of Core
    unsigned mu = Q.GetRow();
    unsigned beta = Q.GetColumn();
    polyEd result;
    polyEd lfactor, rfactor;
    for (unsigned int r = 0; r < Q.GetRow(); r++)
    {
      lfactor = Ed(E_op::Gamma(r)*E_op::Mu(mu), 0);
      for (unsigned int c = 0; c < Q.GetColumn(); c++)
      {
        rfactor = Ed(E_op::Beta(beta)*E_op::Gamma(beta - 1 - c), 0);
        if (!Q(r, c).isEpsilon())
        {
          polyEd tmp = toPolyEd(Q(r, c));
          tmp = lfactor * tmp*rfactor;
          result = result + tmp;
        }
      }
    }
    return result;
  }

  /* Not Tested yet Copy of source from series */
  seriesEd polyEd::star() const
  {
    seriesEd copyS(*this);
    return copyS.star();
  }

  void polyEd::toPov(PovRay & pov, PovRay::Color c)
  {
    for (unsigned i = 0; i < _poly.size(); i++)
    {
      if (i == 0)
      {
        if (i == _poly.size() - 1)
        {
          if (_poly[i].getD() >= 0)	_poly[i].toPov(pov, c, NULL, NULL);
        }
        else if (_poly[i].getD() >= 0)	_poly[i].toPov(pov, c, NULL, &_poly[i + 1]);
      }
      else
      {
        if (i == _poly.size() - 1)
        {
          if (_poly[i].getD() < pov.zmax)
          {
            if (_poly[i].getD() >= 0) _poly[i].toPov(pov, c, &_poly[i - 1], NULL);
          }
          else return;
        }
        else
        {
          if (_poly[i].getD() < pov.zmax)
          {
            if (_poly[i].getD() >= 0) _poly[i].toPov(pov, c, &_poly[i - 1], &_poly[i + 1]);
          }
          else return;
        }
      }
    }

  }

  /* Doe not seem to be OK : algorithm found in 2015 to iteratively compute
  Kleene star of polynomials by computing only Kleen star of elements in minmaxGD
  and products in E[[d]] */

  /* But some bugs are not fixed yet
  seriesEd seriesEd::KleenePoly2015(polyEd p)
  {
  polyEd copie = p;
  copie.CanonB(); //enlever sommets non saillants
  std::vector<std::pair<int, int>> pCourant;
  // Calcul de M : la décomposition du polynome se fait sur
  // \nabla_M avec M le lcm(m_i)
  long M = 1;
  for (unsigned j = 0; j<copie.Size(); j++)
  {
  if (copie[j].GetE().GetPeriode() != copie[j].GetE().GetPeriodicite())
  {
  throw "Polynomial must be conservative (gain=1)";
  }
  M = lcm(M, copie[j].GetE().GetPeriode());
  }
  //cout << "M=" << M << endl;

  std::vector<std::pair<int, std::pair<int, int> >> lesCoefficients;
  // on isole les ni,ni',ti dans la décomposition g^ni\nabla_M g^ni'd^ti
  for (unsigned i = 0; i<copie.Size(); i++)
  {
  pCourant = copie[i].GetE().GetCanon();
  int N = M / copie[i].GetE().GetPeriode();
  for (unsigned k = 0; k<pCourant.size(); k++)
  {
  for (unsigned j = 0; j <= N - 1; j++)
  {
  lesCoefficients.push_back(pair<int, pair<int, int>>(copie[i].GetDelta(),
  pair<int, int>(j*(M / N) + pCourant[k].first, (N - 1 - j)*(M / N) + pCourant[k].second)));
  }
  }
  }

  vector<poly> Pi(M); // Pi[i] = Sum g^ni d^ti  correspondant à Nabla_M g^i
  vector<poly> Vpi(M); // Vpi[i] = Sum [g^ni+i]arrondi à M  d^ti
  vector<polyEd> Pi3D(M);

  // cout << M << endl;
  for (unsigned t = 0; t<lesCoefficients.size(); t++)
  {
  //cout << "n:" << lesCoefficients[t].second.first;
  //cout << " n':" << lesCoefficients[t].second.second;
  //cout << " t:" << lesCoefficients[t].first << endl;
  Pi[lesCoefficients[t].second.second].add(gd(lesCoefficients[t].second.first, lesCoefficients[t].first));
  }
  int NbIterations = 0;

  for (int i = 0; i<M; i++)
  {
  if (!(Pi[i] == poly()))
  {
  for (int k = 0; k<Pi[i].getn(); k++)
  {
  Vpi[i].add(gd(((Pi[i].getpol(k).getg() + i) / M)*M, Pi[i].getpol(k).getd()));
  Pi3D[i] = Pi3D[i] + g(Pi[i].getpol(k).getg())*m(M)*b(M)*g(i)*d(Pi[i].getpol(k).getd());
  }

  NbIterations++;
  //cout << i << endl;
  //cout << Pi[i] << endl;
  cout << Pi3D[i].ToStringOp() << endl;
  //cout << Vpi[i] << endl;
  }
  }

  int NbSubPolysTraites = 0;
  int c = 0;
  while (Pi[c] == poly()) { c++; }

  //Le Polynome P s'écrit P0+P1+P2 ... =
  // Calculer P0*
  // Calculer (P0+P1)* = (P0* P1)* P0* avec P0* P1 = (p+qr*) Nabla_M g^1
  // Calculer (P0+P1+P2)* = ((P0+P1)* P2)* (P0+P1)*
  // ...

  seriesEd P0S(g(0));
  serie sT = star(Vpi[c]);
  seriesEd sT3D = ToseriesEd(sT);
  sT3D = sT3D*seriesEd(Pi3D[c]);
  P0S = P0S + sT3D;
  //cout << "P0* =" << P0S.ToString() << endl;
  NbSubPolysTraites++;

  seriesEd PSPrev_PCur, ProjPSPCur;
  polyEd P, Q, PP, QP;
  poly Vp, Vq;

  cout << "Nb Iterations=" << NbIterations << endl;

  while (NbSubPolysTraites<NbIterations)
  {
  cout << "Iteration #" << NbSubPolysTraites << endl;;
  c++;
  while (Pi[c] == poly()) { c++; }
  PSPrev_PCur = P0S*seriesEd(Pi3D[c]);
  //cout << "(P0* P1)=" << PSPrev_PCur.ToString() << endl;
  ProjPSPCur = PSPrev_PCur.ToSerieMMGD();

  // P + QR*
  P = PSPrev_PCur.GetP();
  Q = PSPrev_PCur.GetQ();
  PP = ProjPSPCur.GetP();
  QP = ProjPSPCur.GetQ();


  cout << "P=" << P.ToStringOp() << endl;
  cout << "Q=" << Q.ToStringOp() << endl;
  cout << "PP=" << PP.ToStringOp() << endl;
  cout << "QP=" << QP.ToStringOp() << endl;
  cout << "R=" << PSPrev_PCur.GetR() << endl;


  // l'étoile de sT3D est un cas particlier (p+qr*)Nabla_M g^k
  // Ecrire la fonction qui calcule  ce cas.

  for (unsigned i = 0; i<PP.Size(); i++)
  {
  Vp.add(gd(((PP[i].GetE().GetKOut(0) + c) / M)*M, PP[i].GetDelta()));
  }
  for (unsigned i = 0; i<QP.Size(); i++)
  {
  Vq.add(gd(((QP[i].GetE().GetKOut(0) + c) / M)*M, QP[i].GetDelta()));
  }
  //cout << "Vp=" << Vp << endl << "Vq=" << Vq << endl;


  // Calculer (e + Vp* PP Nabla_M g^c) (e+ Q(e+(Vp+Vq)*(P+Q))R*


  serie terme1 = star(Vp);
  seriesEd terme1_3D = ToseriesEd(terme1);

  //cout << "Vp*" << terme1_3D.ToString() << endl;

  terme1_3D = seriesEd(g(0)) + (terme1_3D*P);
  //cout << "e+Vp* P=" << terme1_3D.ToString() << endl;


  //e +Q(e+(Vp+Vq)*(P+Q))r*
  serie terme2 = star(::oplus(Vp, Vq));
  serie terme3 = star(poly(PSPrev_PCur.GetR()));
  seriesEd terme2_3D = ToseriesEd(terme2);

  // (e +(Vp+Vq)*(P+Q)) r*
  seriesEd terme4 = (seriesEd(g(0)) + terme2_3D*seriesEd(P + Q))*ToseriesEd(terme3);

  //e +Q(e+(Vp+Vq)*(P+Q))r*
  seriesEd terme5 = seriesEd(g(0)) + seriesEd(Q)*terme4;

  seriesEd PCurS;
  PCurS = terme1_3D *terme5;
  //cout << "(P0* P1)*=" << PCurS.ToString() << endl;

  P0S = PCurS*P0S;  // on finit l'itération suivante
  //cout << "(P0* P1)* P0*=" << P0S.ToString() << endl;
  NbSubPolysTraites++;
  }
  //P0S.ToLeft();

  seriesEd resultat(P0S);
  return resultat;
  }*/

}
