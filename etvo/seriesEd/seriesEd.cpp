#include "seriesEd.h"
#include "../common/EtvoTools.h"
#include<vector>
#include "../etop/E_op.h"
#include "../common/etvoException.h"
#include "../common/global.h"

#include<algorithm>

//#define TRACE

using namespace std;
namespace etvo
{
	seriesEd eg(int n) { return seriesEd(Ed::g(n)); }
	seriesEd ed(int t) { return seriesEd(Ed::d(t)); }
	seriesEd em(unsigned w) { return seriesEd(Ed::m(w)); }
	seriesEd eb(unsigned w) { return seriesEd(Ed::b(w)); }
	seriesEd en(unsigned n) { return seriesEd(Ed::N(n)); }

	seriesEd em(const std::vector<unsigned> & w)
	{
		return seriesEd(Ed(E_op::MuVar(w), 0));
	}
	seriesEd eb(const std::vector<unsigned> & w)
	{
		return seriesEd(Ed(E_op::BetaVar(w), 0));
	}

	// for matrix<seriesEd>
	seriesEd star(const seriesEd & s)
	{	
		return s.star();
	}

	seriesEd oplus(const seriesEd & s1, const seriesEd & s2)
	{
		return s1 + s2;
	}
	seriesEd inf(const seriesEd & s1, const seriesEd & s2)
	{
		return s1.inf(s2);
	}

	seriesEd otimes(const seriesEd & s1, const seriesEd & s2)
	{
		return s1 * s2;
	}

	seriesEd lfrac(const seriesEd & s1, const seriesEd & s2)
	{
		return s1.lfrac(s2);
	}

	seriesEd rfrac(const seriesEd & s1, const seriesEd & s2)
	{
		return s1.rfrac(s2);
	}


	std::string seriesEd::toStringAsMuVar() const
	{
		bool ispoly = isPolynomial();
		std::string resultat;
		if (isEpsilon()) return "eps";
		if (_droite) // right form p+q.r*
		{
			if (!_p.isEpsilon())	resultat += "((" + _p.toStringAsMuVar() + "))+";
			resultat += "(" + _q.toStringAsMuVar() + ")";
			if (!ispoly)
			{
				Ed r(E_op::Gamma(_gammaR), _delta);
				resultat += ".[" + r.toString() + "]*";
			}
		}
		else
		{
			if (!_p.isEpsilon())	resultat += "((" + _p.toStringAsMuVar() + "))+";
			if (!ispoly)
			{
				Ed rp(E_op::Gamma(_gammaL), _delta);
				resultat += "[" + rp.toString() + "]*.";
			}
			resultat += "(" + _q.toStringAsMuVar() + ")";
		}
		return resultat;
	}

	std::string seriesEd::toString() const
	{
		bool ispoly = isPolynomial();
		std::string resultat;
		if (isEpsilon()) return "eps";
		if (_droite) // right form p+q.r*
		{
			if (!_p.isEpsilon())	resultat += "((" + _p.toString() + "))+";
			resultat += "(" + _q.toString() + ")";
			if (!ispoly)
			{
				Ed r(E_op::Gamma(_gammaR), _delta);
				resultat += ".[" + r.toString() + "]*";
			}
		}
		else
		{
			if (!_p.isEpsilon())	resultat += "((" + _p.toString() + "))+";
			if (!ispoly)
			{
				Ed rp(E_op::Gamma(_gammaL), _delta);
				resultat += "[" + rp.toString() + "]*.";
			}
			resultat += "(" + _q.toString() + ")";
		}
		return resultat;
	}

	std::ostream & operator<<(std::ostream & f, const seriesEd & s) {
		f << s.toString();
		return f;
	}

	seriesEd seriesEd::Epsilon()
	{
		return seriesEd();
	}

	seriesEd seriesEd::Top()
	{
		return seriesEd(polyEd::Top());
	}

	seriesEd seriesEd::E()
	{
		return polyEd::E();
	}

	bool seriesEd::isPolynomial() const
	{
		return _delta == 0;
	}

	bool seriesEd::isE() const
	{
		if (isPolynomial())
		{
			return getQ() == polyEd::E();
		}
		else return false;
	}

	seriesEd::seriesEd(bool TopNotE)
	{
		if (TopNotE)
		{
			setTop();
			_droite = true;
			_gammaR = 1;
			_gammaL = 1;
			_delta = 0;
			_p = polyEd::Top();
			_q = polyEd::Top();
		}
		else
		{
			_droite = true;
			_gammaR = 1;
			_gammaL = 1;
			_delta = 0;
			_q = polyEd(Ed::E());
		}
	}

	seriesEd::seriesEd() :ISterm(true)  // eps = eps + eps (g^1 d^0)*
	{
		_droite = true;
		_gammaR = 1;
		_gammaL = 1;
		_delta = 0;
	}

	//Convention : Forme canonique des polynomes p=eps r=g^1d^0
	seriesEd::seriesEd(const Ed & m) :ISterm(false) // eps = eps + m (g^1 d^0)*
	{
		_droite = true;
		_gammaR = 1;
		_gammaL = 1;
		_delta = 0;
		_q = polyEd(m);
	}


	seriesEd::seriesEd(const polyEd & q) :ISterm(false)  // eps = eps + q (g^1 d^0)*
	{
		_droite = true;
		_gammaR = 1;
		_gammaL = 1;
		_delta = 0;
		_q = q;
		if (_q.isEpsilon()) setEpsilon();
		if (_q.isTop()) setTop();

	}

	/* Replaced by a simplified version C++11 (calling another constructor)
	seriesEd::seriesEd(const polyEd & p, const polyEd & q, const gd & r, bool droite) :ISterm(false), _p(p), _q(q)
	{
		seriesEd tmp(p, q, r.getg(), r.getd(), droite);
		*this = tmp;
	}*/

	seriesEd::seriesEd(const polyEd & p, const polyEd & q, const gd & r, bool droite) :seriesEd(p, q, r.getg(), r.getd(), droite)
	{}


  seriesEd::seriesEd(const polyEd & p, const polyEd & q, 
                    long gamma, long delta, bool droite):ISterm(false),_p(p), _q(q)
  {
    if (gamma<0) gamma = 0;
    if (delta<0) delta = 0;

	if(delta==0) gamma = 1;
	if (gamma == 0 && delta != 0)
	{
		throw etvoException(201, "[g0.d+inf] degenerate cases are not handled yet!");
	}
    _delta = delta;
    _droite = droite;
    _p = _p + _q;
    _p.canon();
    _q.canon();
    if (_q.isEpsilon())
    {
      seriesEd  tmp(p);
      *this = tmp;
    }
    else
    {
      degenerateCase();
      if (_droite)
      {
        _gammaR = gamma;
        toProperFormR();
      }
      else
      {
        _gammaL = gamma;
        toProperFormL();
      }
    }
  }
  

  polyEd seriesEd::getP() const
  {
    return _p;
  }

  polyEd seriesEd::getQ() const
  {
    return _q;
  }

  gd seriesEd::getR() const
  {
    if (isRightForm())	return gd(_gammaR, _delta);
    else return gd(_gammaL, _delta);
  }


  bool seriesEd::isRightForm() const
  {
    return this->_droite == true;
  }

  bool seriesEd::isLeftForm() const
  {
    return this->_droite == false;
  }

  void seriesEd::degenerateCase()
  {
    if (_delta == 0) // polynomial
    {
      _gammaR = 1;
      _gammaL = 1;
      _q = _p + _q;
      _p = polyEd(); //p=eps
    }
  }

  void seriesEd::toRight()
  {
    if (isLeftForm()) this->rightLeft();
  }

  void seriesEd::toLeft()
  {
    if (isRightForm())	this->rightLeft();
  }

  void seriesEd::rightLeft()
  {
    if (this->isPolynomial())
    {
      _droite = !_droite;
      return;
    }
    // echange écriture Gauche<-> Droite
    if (_droite)   // passe de Droite à Gauche
    {
      long i = 0;
      long B = _q[0].getE_op().getB();
      for (i = 1; i<(long)_q.size(); i++)	B = Tools::lcm(B, (long)_q[i].getE_op().getB());
      long M = B*_q[0].getE_op().getM() / _q[0].getE_op().getB();

      polyEd facteur;
      for (i = 0; i <= B - 1; i++)
        facteur = facteur + Ed(E_op::Gamma(i*_gammaR), i*_delta);
      polyEd qp = _q*facteur;
      _delta = B*_delta;
      _gammaL = M*_gammaR;
      _q = qp;
      _droite = false;
      toProperFormL();
    }
    else //passe de Gauche à Droite
    {
      int i = 0;
      long M = _q[0].getE_op().getM();
      for (i = 1; i<(long)_q.size(); i++) M = Tools::lcm(M, (long)_q[i].getE_op().getM());
      long B = M*_q[0].getE_op().getB() / _q[0].getE_op().getM();

      polyEd facteur;
      for (i = 0; i <= M - 1; i++)
        facteur = facteur + Ed(E_op::Gamma(i*_gammaL), i*_delta);

      polyEd qp = facteur*_q;
      _delta = M*_delta;
      _gammaR = B*_gammaL;
      _q = qp;
      _droite = true;
      toProperFormR();
    }
  }

  bool seriesEd::isProper() const
  {
    bool result;
    result = _p.isCanon() && _q.isCanon();
    if (!result) return false;
    if (_p.size() != 0)
    {
      Ed m1 = _p[_p.size() - 1];
      Ed m2 = _q[0];
      if (m1.getD() >= m2.getD()) return false;
      if (!(m1.getE_op() > m2.getE_op())) return false;
    }
    gd r = getR();

    if (isRightForm())
    {
      Ed m1 = _q[_q.size() - 1];
      Ed m2 = _q[0] * Ed(E_op::Gamma(r.getg()), r.getd());
      if (m1.getD() >= m2.getD()) return false;
      if (!(m1.getE_op() > m2.getE_op())) return false;
    }
    else
    {
      Ed m1 = _q[_q.size() - 1];
      Ed m2 = Ed(E_op::Gamma(r.getg()), r.getd()) *_q[0] ;
      if (m1.getD() >= m2.getD()) return false;
      if (!(m1.getE_op() > m2.getE_op())) return false;
    }
    return true;
  }

  void seriesEd::canon()
  {
    if (isLeftForm())
    {
      toProperFormL();
    }
    else
    {
      toProperFormR();
    }
  }

  //Modification 9/10/18   
  void seriesEd::toProperFormL()
  {
    if (_gammaL>0 && _delta>0)
    {
      toProperPeriodicL();
      toProperTransientL();
      // To take the coef of q[0] into account
      if (_q.size() > 0){
        _p.add(_q[0]);
        _p.removeTerm(_p.size() - 1);
      }      
      reductionPeriodicL();    
      reductionTransientL();
      if (_q.size() > 0){
        _p.add(_q[0]);
        _p.removeTerm(_p.size() - 1);
        Ed factor(E_op::Gamma(_gammaL), _delta);
        _q.add(factor*_q[0]);
        _q.removeTerm(_q.size() - 1);
      }     
    }
  }
  //Modification 9/10/18   
  void seriesEd::toProperFormR()
  {
    if (_gammaR>0 && _delta>0)
    {
      toProperPeriodicR();
      toProperTransientR();
      if (_q.size() > 0){
        _p.add(_q[0]);
        _p.removeTerm(_p.size() - 1);
      }    
      reductionPeriodicR();      
      reductionTransientR();
      if (_q.size() > 0){
        _p.add(_q[0]);
        _p.removeTerm(_p.size() - 1);
        Ed factor(E_op::Gamma(_gammaR), _delta);
        _q.add(_q[0] * factor);
        _q.removeTerm(_q.size() - 1);        
      }         
    }
  }

  void seriesEd::reductionPeriodicR()
  {
    // suppose que WN >W1.gamma^_gammaR et tN<t1+_deltaR
    // réduit la taille du périodique si possible

    //adaptation de l'algo de Laurent H
    long indice = min(_delta, _gammaR);
    while (indice >= 2 && _q.size()>1)
    {	// est-ce que indice divise _delta et _gammaR
      if (!((_gammaR%indice) == 0 && (_delta%indice) == 0))
      {
        indice--;  //indice n'est pas diviseur
      }
      else
      {
        polyEd nouveau, etendu;
        long nu = _gammaR / indice;
        long tau = _delta / indice;
        E_op gNu = E_op::Gamma(nu);
        Ed nutau;
        //motif supposé
        long i = 0;
        while (i < (long) _q.size() && (_q[i].getE_op())>_q[0].getE_op().otimes(gNu) && _q[i].getD()<(_q[0].getD() + tau))
        {
          nouveau = nouveau + _q[i];
          i++;
        }
        etendu = nouveau;
        for (i = 1; i<indice; i++)
        {
          nutau = Ed(E_op::Gamma(nu*i), tau*i);
          etendu = etendu + (nouveau*nutau);
        }

        if (etendu == _q)
        {
          _q = nouveau;
          _gammaR = nu;
          _delta = tau;
          indice = min(nu, tau);
        }
        else
        {
          indice--;
        }
      }
    }

  }

  
  void seriesEd::reductionPeriodicL()
  {
    // suppose que WN >W1.gamma^_gammaR et tN<t1+_deltaR
    // réduit la taille du périodique si possible

    //adaptation de l'algo de Laurent H
    long indice = min(_delta, _gammaL);
    while (indice >= 2 && _q.size()>1)
    {	// est-ce que indice divise _delta et _gammaR
      if (!((_gammaL%indice) == 0 && (_delta%indice) == 0))
      {
        indice--;  //indice n'est pas diviseur
      }
      else
      {
        polyEd nouveau, etendu;
        long nu = _gammaL / indice;
        long tau = _delta / indice;
        E_op gNu = E_op::Gamma(nu);
        Ed nutau;
        //motif supposé
        long i = 0;
        while (i < (long)_q.size() && (_q[i].getE_op())>gNu.otimes(_q[0].getE_op()) && _q[i].getD()<(_q[0].getD() + tau))
        {
          nouveau = nouveau + _q[i];
          i++;
        }
        etendu = nouveau;
        for (i = 1; i<indice; i++)
        {
          nutau = Ed(E_op::Gamma(nu*i), tau*i);
          etendu = etendu + (polyEd(nutau)*nouveau);
        }

        if (etendu == _q)
        {
          _q = nouveau;
          _gammaL = nu;
          _delta = tau;
          indice = min(nu, tau);
        }
        else
        {
          indice--;
        }
      }
    }

  }

  //correction 9/10/18 -> p.add(m) instead of p=p+m
  void seriesEd::toProperPeriodicR()
  { // Lead to the size of _q to be less than the window _gammaR,_delta
    // (q0+q1+...+qn)r* = q0 + (q1+..+qn+q0r)r*
    // q0 is inserted into _p and _q is changed    
    if (!(_q[_q.size() - 1].getD() < (_q[0].getD() + _delta) && _q[_q.size() - 1].getE_op()>_q[0].getE_op().otimes(E_op::Gamma(_gammaR))))
    {
      Ed ajout(_q[0] * Ed(E_op::Gamma(_gammaR), _delta));      
      _p.add(_q[0]);    //_p = _p + _q[0];
      _q.removeTerm(0);      
      _q.add(ajout);  //_q = _q + ajout;
      toProperPeriodicR();
    }    
  }

  //correction 9/10/18 -> p.add(m) instead of p=p+m
  void seriesEd::toProperPeriodicL()
  {// Lead to the size of _q to be less than the window _gammaR,_delta
    // (q0+q1+...+qn)r* = q0 + (q1+..+qn+q0r)r*
    // q0 is inserted into _p and _q is changed    
    if (!(_q[_q.size() - 1].getD() < (_q[0].getD() + _delta) && _q[_q.size() - 1].getE_op()>E_op::Gamma(_gammaL).otimes(_q[0].getE_op())))
    {
      Ed ajout(Ed(E_op::Gamma(_gammaL), _delta)*_q[0]);      
      _p.add(_q[0]); //_p = _p + _q[0];
      _q.removeTerm(0);      
      _q.add(ajout); //_q = _q + ajout;
      toProperPeriodicL();
    }   
  }

  //correction 9/10/18 -> p.add(m) instead of p=p+m
  void seriesEd::toProperTransientR()
  {
    // The transient _p overlaps the periodic pattern _q
    if (!_p.isEpsilon())
    {
      if (_p[_p.size() - 1].getD() >= _q[0].getD() || _q[0].getE_op() >= _p[_p.size() - 1].getE_op())
      {
        Ed ajout(_q[0] * Ed(E_op::Gamma(_gammaR), _delta));
        _p.add(_q[0]);  //_p = _p + _q[0];
        _q.removeTerm(0);
        _q.add(ajout); // _q = _q + ajout;
        toProperTransientR();
      }
    }
  }

  //correction 9/10/18 -> p.add(m) instead of p=p+m
  void seriesEd::toProperTransientL()
  {
    // The transient _p overlaps the periodic pattern _q
    if (!_p.isEpsilon())
    {
      if (_p[_p.size() - 1].getD() >= _q[0].getD() || _q[0].getE_op() >= _p[_p.size() - 1].getE_op())
      {
        Ed ajout(Ed(E_op::Gamma(_gammaL), _delta)*_q[0]);
        _p.add(_q[0]);  // _p = _p + _q[0];
        _q.removeTerm(0);
        _q.add(ajout);  //_q = _q + ajout;
        toProperTransientL();
      }
    }
  }

  void seriesEd::reductionTransientR()
  {
    if (!_p.isEpsilon())
    {
      if (_p[_p.size() - 1] * Ed(E_op::Gamma(_gammaR), _delta) == _q[_q.size() - 1])
      {
        _q = _q + _p[_p.size() - 1];
        _q.removeTerm(_q.size() - 1);
        _p.removeTerm(_p.size() - 1);
        reductionTransientR();
      }
    }
  }


  void seriesEd::reductionTransientL()
  {
    if (!_p.isEpsilon())
    {
      if (Ed(E_op::Gamma(_gammaL), _delta)*_p[_p.size() - 1] == _q[_q.size() - 1])
      {
        _q = _q + _p[_p.size() - 1];
        _q.removeTerm(_q.size() - 1);
        _p.removeTerm(_p.size() - 1);
        reductionTransientL();
      }
    }
  }


  std::pair<unsigned int, unsigned int> seriesEd::getMaxGain() const
  {
    unsigned int mu, beta;
    getMaxGain(mu, beta);
    return std::pair<unsigned int, unsigned int>(mu, beta);
  }

  // returns max of (mu,beta)
  void seriesEd::getMaxGain(unsigned int & mu, unsigned int & beta) const
  {
    beta = 0;
    mu = 0;
    unsigned int bp, bq, mp, mq;
    if (!isEpsilon())
    {
      _p.getMaxGain(mp, bp);
      _q.getMaxGain(mq, bq);
      beta = std::max(bp, bq);
      mu = std::max(mp, mq);
    }
    else // convention
    {
      beta = 1;
      mu = 1;
    }
  }

  // Correction 11/10/18
  // returns the lcm of  mu and beta of all terms
  void seriesEd::getLcmGain(unsigned int & mu, unsigned int & beta) const
  {
    //the least common multiple of all gains
    beta = 1;
    mu = 1;
    if (!isEpsilon())
    {      
      for (long i = 0; i<(long)_p.size(); i++)
      {
        beta = Tools::lcm(beta, _p[i].getE_op().getB());
        mu = Tools::lcm(mu, _p[i].getE_op().getM());
      }
      for (long i = 0; i<(long)_q.size(); i++)
      {
        beta = Tools::lcm(beta, _q[i].getE_op().getB());
        mu = Tools::lcm(mu, _q[i].getE_op().getM());
      }
    }    
  }
   
// 12/11/18
// here develops the first terms of series up to d.deltaT
// 2 cases : polynomial or not
  polyEd seriesEd::getPolyUpTo(int deltaT) const
  {
    if (isPolynomial())
    {
      polyEd result;
      for (unsigned i = 0; i < _q.size(); i++)
      {
        if (_q[i].getD() <= deltaT) result = result + _q[i];
        else break;
      }
      return result;
    }
    else {
      seriesEd copy(*this);
      if (copy.isRightForm())
      {
        polyEd result;
        for (unsigned i = 0; i < copy._p.size(); i++)
        {
          if (copy._p[i].getD() <= deltaT) result = result + copy._p[i];
          else break;
        }
        bool goon = true;
        Ed factor(E_op::Gamma(0), 0);
        do
        {
          for (unsigned i = 0; i < copy._q.size(); i++)
          {
            Ed term = copy._q[i] * factor;
            if (term.getD() <= deltaT) result = result + term;
            else
            {
              goon = false;
              break;
            }
          }
          factor = factor * Ed(E_op::Gamma(copy.getR().getg()), copy.getR().getd());
        } while (goon);
        return result;
      }
      else  // Left form
      {
        polyEd result;
        for (unsigned i = 0; i < copy._p.size(); i++)
        {
          if (copy._p[i].getD() <= deltaT) result = result + copy._p[i];
          else break;
        }
        bool goon = true;
        Ed factor(E_op::Gamma(0), 0);
        do
        {
          for (unsigned i = 0; i < copy._q.size(); i++)
          {
            Ed term = factor * copy._q[i];
            if (term.getD() <= deltaT) result = result + term;
            else
            {
              goon = false;
              break;
            }
          }
          factor = Ed(E_op::Gamma(copy.getR().getg()), copy.getR().getd())*factor;
        } while (goon);
        return result;
      }
    }
}


/*version 2 */
// static function : develops the first terms of series up to d.deltaT
// but p,q,r is not supposed to be a canonical form
// note : r is assumed to be different from gd(n,0) [polynomial]
polyEd seriesEd::getPolyUpTo(int deltaT, const polyEd & p, const polyEd & q, const gd & r, bool droite)
{
  if (r.getd() == 0) return (p+q);  // abnormal situation

  int extra = r.getd() + q.getTerms().back().getD() - q.getTerms().front().getD();
  //int extra = 0;
  polyEd result(p);   
  // insert all terms of p, even if some of them will be removed
  if (droite)
  {    
    for (unsigned i = 0; i < q.size(); i++)
    {
      Ed factor(E_op::Gamma(r.getg()), r.getd());
      Ed term = q[i];
      while (term.getD() <= (deltaT+extra))
      {
        result = result + term;       
        term = term * factor;
      }
    }        
  }
  else
  {    
    for (unsigned i = 0; i < q.size(); i++)
    {
      Ed factor(E_op::Gamma(r.getg()), r.getd());
      Ed term = q[i];
      while (term.getD() <= (deltaT+extra))
      {
        result = result + term;
        term = factor*term;
      }
    }    
  }
  while( result.size()!=0 && result[result.size() - 1].getD() > deltaT) { result.removeTerm(result.size() - 1); }
  return result;
}


/* version 1 de PolyUpTo() = KO not correct (available in version etvo13 if necessary 
// static function : develop the first terms of series up to d.deltaT
// but p,q,r is not supposed to be a canonical form
*/

/*ADAPTED FROM mmmgd LH */
long seriesEd::getDominationTimeLH(const seriesEd & slow, const seriesEd & fast)
{
  /*
  unsigned int ms, bs, mf, bf;
  long M;
  long B;
  slow.getMaxGain(ms, bs);
  fast.getMaxGain(mf, bf);
  M = Tools::lcm(mf, ms);
  */
  gd rs = slow.getR();
  gd rf = fast.getR();

  // first terms of qfast qslow and last term of qfast
  gd qs0, qf0,qflast;
  qs0 = gd((long)(slow._q[0].getE_op().getFw().getyMax0()) + 1, slow._q[0].getD());
  qf0 = gd((long)(fast._q[0].getE_op().getFw().getyMin0()), fast._q[0].getD());
  qflast= gd((long)(fast._q[fast._q.size()-1].getE_op().getFw().getyMin0()), fast._q[fast._q.size() - 1].getD());
  long t2 = qflast.getd();
  long k1 = rs.getg()*(t2 - qs0.getd() + rs.getd()) + rs.getd()*(qs0.getg() - qf0.getg());
  long k2 = rs.getd()*rf.getg() - rs.getg()*rf.getd();
  long k = std::max(std::max((int)ceil((double)k1 / k2), 0), (int)ceil((double)(qs0.getg() - qf0.getg()) / rf.getg()));
  long Tdomin = t2 + k * rf.getd();
  return Tdomin;
}

long seriesEd::getDominationTime(const seriesEd & slow, const seriesEd & fast)
{
  unsigned int ms, bs, mf, bf;
  long M;
  ///long B;
  slow.getMaxGain(ms, bs);
  fast.getMaxGain(mf, bf);
  M = Tools::lcm(mf, ms);
  gd rs = slow.getR();
  gd rf = fast.getR();
  poly qsp, qfp;
  for (long i = 0; i<(long)slow._q.size(); i++)
    qsp=qsp +gd(slow._q[i].getE_op().Fw(0)+M, slow._q[i].getD());
  for (long j = 0; j<(long)fast._q.size(); j++)
    qfp =qfp +gd(fast._q[j].getE_op().Fw(0) - M, fast._q[j].getD());
  
  long DominationG = qsp.getpol(0).getg();
  long DominationT = qsp.getpol(0).getd();
  double a1, a2, b1, b2;
  long tau1, tau2, nu1, nu2;
  tau1 = slow.getR().getd();
  tau2 = fast.getR().getd();
  nu1 = slow.getR().getg();
  nu2 = fast.getR().getg();
  a1 = double(tau1) / nu1;
  a2 = double(tau2) / nu2;
  for (long i = 0; i<(long)qsp.getn(); i++)
  {
    for (long j = 0; j<(long)qfp.getn(); j++)
    {
      b1 = qsp.getpol(i).getd() - tau1 - double(tau1*qsp.getpol(i).getg()) / nu1;
      b2 = qfp.getpol(j).getd() - double(tau2*qfp.getpol(j).getg()) / nu2;
      DominationG = max(DominationG, long((b2 - b1) / (a1 - a2)) + 1);
      DominationT = max(DominationT, long(a1*(b2 - b1) / (a1 - a2) + b1) + 1);
    }
  }
  return DominationT;
}

// Used in the sum of matrix<T>
seriesEd seriesEd::operator+(const seriesEd  & s) const
{
	switch (global::oplus_alg)
	{
	case global::OPLUS_ALG::oplus_std:
		return this->oplus(s);
		break;
	case global::OPLUS_ALG::oplus_CD:
		return this->oplusCD(s);
		break;
	default:
		return this->oplus(s);
		break;
	}
}

seriesEd seriesEd::oplus(const polyEd & p) const
{
	return oplus(seriesEd(p));
}

// standard oplus of seriesEd
 seriesEd seriesEd::oplus(const seriesEd & s) const
 {
    if (isTop() || s.isTop()) return Top();
    if (isEpsilon()) return s;
    if (s.isEpsilon()) return *this;

    if (isPolynomial() && s.isPolynomial())
    {
      return seriesEd(_q + s._q);
    }

    if (isPolynomial())  // *this=poly but s is a series
    {                    // q + (p'+r'*q')
      seriesEd copyS(s);
      copyS.toLeft();
	  // BUG fixed May 2019 -> the same bug in seriesTg fixed as well
      return seriesEd(copyS.getP() + _q, copyS.getQ(), copyS.getR().getg(), copyS.getR().getd(), false);
    }

    if (s.isPolynomial()) // s=poly but *this is a series
    {                     // (p+r*q) + q'
      seriesEd copyT(*this);
      copyT.toLeft();
      return seriesEd(copyT.getP() + s.getQ(), copyT.getQ(), copyT._gammaL, copyT._delta, false);
    }

    // *this and  s arenot polynomials
    unsigned int m1, b1, m2, b2;
    long M, B;
    getMaxGain(m1, b1);
    s.getMaxGain(m2, b2);

    if ((b2*m1) != (b1*m2))
    {
      throw etvoException(400,"The same gain is required for the sum of seriesEd!");
    }
    else
    {
      seriesEd copyS(s);
      seriesEd copyT(*this);
      // put the two series in left form  p+r*q
      copyT.toLeft();
      copyS.toLeft();

      gd r = copyT.getR(), rp = copyS.getR();
      long nu = r.getg(), nup = rp.getg();
      long tau = r.getd(), taup = rp.getd();

      M = Tools::lcm(m1, m2);
      B = (M*b1) / m1;

      if ((nu*taup) == (nup*tau)) //both series with the same slope
      {
        #ifdef TRACE
        cout << "oplus seriesEd same slope ..." << endl;
        #endif

        long NU = Tools::lcm(nu, nup);
        long TAU = (taup*NU) / nup;
        // on développe (g^nud^tau)* = (g^NUd^TAU)*(e + g^nu d^tau + g^2nud^2tau ...)
        //							 = (g^NU d^TAU)* facteur
        //							 = (g^NUd^TAU)*(e + g^nup d^taup + g^2nupd^2taup ...)
        polyEd facteur, facteurp;

        // for (long i = 0; i <= (NU / nu); i++)  //Modif !!!
        for (long i = 0; i < (NU / nu); i++)
        {
          facteur = facteur + Ed(E_op::Gamma(i*nu), tau*i);
        }
        //for (long j = 0; j <= (NU / nup); j++) //Modif !!!
        for (long j = 0; j < (NU / nup); j++)
        {
          facteurp = facteurp + Ed(E_op::Gamma(j*nup), taup*j);
        }
        polyEd f = (facteur*copyT._q) + (facteurp*copyS._q);
        polyEd som = copyT._p + copyS._p;
       // cout << "f= " << f << endl;
       // cout << "som=" << som << endl;
        //cout << "begin constr series(som,f,NU,TAU,false)" << endl;
        seriesEd result(som, f, NU, TAU, false);
        return result;
      }
      else  // different slopes
      {
       // cout << "oplus seriesEd different slopes" << endl;
        seriesEd * slow, *fast;
        if ((double(tau) / nu)>(double(taup) / nup))  // this domine ultimement
        {
          slow = &copyT;
          fast = &copyS;
        }
        else
        {
          slow = &copyS;
          fast = &copyT;
        }

        // s1 dominant et s2 dominée
        seriesEd &sslow = *slow;
        seriesEd &sfast = *fast;
        
		// Replaced by the algorithm from LH's lib.
        // long DominationT = GetDominationTime(sslow, sfast);   
        long DominationT = getDominationTimeLH(sslow, sfast);
        
        gd r1 = sslow.getR();
        gd r2 = sfast.getR();
       // long tau1= sslow.getR().getd();                
        if ((DominationT/sfast.getR().getd()) > global::LIMIT_TRANS_DELTA)
        {
          cout << "DomT=" << DominationT << endl;
          throw etvoException(901, "Too much elements in transient!");
        }

        polyEd P, Q;
        P = sslow._p + sfast._p;
        vector<Ed> vPToAdd,vQToAdd;

        // on ajoute à P les monomes de s1._q jusqu'à domination
        long k = 0;
        long l = 0;
        while ((sslow._q[k].getD() + l*r1.getd())<=(DominationT))
        {         
          //P = P + polyEd(Ed(E_op::Ga(l*r1.getg()), l*r1.getd()))*sslow._q[k];
          vPToAdd.push_back(Ed(E_op::Gamma(l*r1.getg()), l*r1.getd())*sslow._q[k]);
          k++;
          if (k == (long)sslow._q.size())
          {
            k = 0;
            l++;
          }
        }
        // Q est le motif suivant de _q
        for (long i = 0; i<(long)sslow._q.size(); i++)
        {
          //Q = Q + polyEd(Ed(E_op::Ga(l*r1.getg()), l*r1.getd()))*sslow._q[k];
          vQToAdd.push_back(Ed(E_op::Gamma(l*r1.getg()), l*r1.getd())*sslow._q[k]);
          k++;
          if (k ==(long) sslow._q.size())
          {
            k = 0;
            l++;
          }
        }

        // on ajoute à P les monomes de sfast._q jusqu'à domination
        k = 0;
        l = 0;
        while ((sfast._q[k].getD() + l*r2.getd())<(DominationT))
        {
          //P = P + polyEd(Ed(E_op::Ga(l*r2.getg()), l*r2.getd()))*sfast._q[k];
          vPToAdd.push_back(Ed(E_op::Gamma(l*r2.getg()), l*r2.getd())*sfast._q[k]);
          k++;
          if (k ==(long)sfast._q.size())
          {
            k = 0;
            l++;
          }
        }
        P = P + polyEd(vPToAdd);        
        return seriesEd(P, polyEd(vQToAdd), r1.getg(), r1.getd(), false);
      }
    }
  }

  // oplus of seriesEd by Core Decomposition
  seriesEd seriesEd::oplusCD(const seriesEd & s) const
  {
    if (isTop() || s.isTop()) return Top();
    if (isEpsilon()) return s;
    if (s.isEpsilon()) return *this;
    unsigned int m1, b1, m2, b2;
    getLcmGain(m1, b1);
    s.getLcmGain(m2, b2);
    if ((m1*b2) != (m2*b1))
    {
      throw etvoException(310, "Only the sum of seriesEd with equal gain is allowed!");
    }
    long M = Tools::lcm(m1, m2);
    //matrix<series> Q1 = GetCoreMax(M / m1);
    matrix<series> Q1 = getCore(M / m1);
   // cout << "size q1 = " << Q1.GetRow() << Q1.GetColumn() << endl;

    //matrix<series> Q2 = s.GetCoreMax(M / m2);
    matrix<series> Q2 = s.getCore(M / m2);
   // cout << "size q2 = " << Q2.GetRow() << Q2.GetColumn() << endl;

    matrix<series> Q = Q1+Q2;
    seriesEd res = seriesEd::coreToSeriesEd(Q);
    return res;
  }

  // otimes of seriesEd by Core Decomposition
  seriesEd seriesEd::otimesCD(const seriesEd & s) const
  {
    if (this->isEpsilon()) return seriesEd();  // retourne eps
    if (s.isEpsilon()) return seriesEd();  // retourne eps
    if (this->isTop()) return seriesEd::Top();  // retourne T
    if (s.isTop()) return seriesEd::Top();  // retourne T

    seriesEd cT(*this);
    seriesEd cS(s);
    unsigned int mu1, be1, mu2, be2;
    cT.getLcmGain(mu1, be1);
    cS.getLcmGain(mu2, be2);
    long mul = Tools::lcm(be1, mu2);
   // cout << "mul=" << mul << endl;

    matrix<series> Q1 = cT.getCore(mul / be1);
    matrix<series> Q2 = cS.getCore(mul / mu2);
    matrix<series> N = seriesEd::getMatN(Q2.GetRow());
    matrix<series> prod = Q1*N*Q2;
    //cout << "size core = " << prod.GetRow() << "x" << prod.GetColumn() << endl;
    seriesEd resultat=seriesEd::coreToSeriesEd(prod);
    return resultat;
  }

  seriesEd seriesEd::operator*(const Ed & m) const
  {
	  // Modified 3/5/19
	  // return otimes(m);
	  return operator*(seriesEd(m));
  }

  seriesEd seriesEd::oplus(const polyEd & p, const seriesEd & s)
  {
	  // Modified 3/5/19
	  //return seriesEd(p).oplus(s);
	  return seriesEd(p) + s;
  }

  seriesEd seriesEd::otimes(const Ed & m, const seriesEd & s)
  {
    if (s.isEpsilon()) return seriesEd();  // retourne eps
    if (s.isTop()) return seriesEd::Top();  // retourne T

    if (s.isPolynomial()) 	return seriesEd(polyEd::otimes(m,s._q));
    seriesEd cT(s);
    cT.toRight();
    return seriesEd(polyEd::otimes(m, cT.getP()), polyEd::otimes(m, cT.getQ()),cT.getR(),true);
  }

  seriesEd seriesEd::otimes(const Ed & m) const
  {
    if (this->isEpsilon()) return seriesEd();  // retourne eps
    if (this->isTop()) return seriesEd::Top();  // retourne T
    if (isPolynomial()) 	return seriesEd(_q*polyEd(m));

    seriesEd cT(*this);
    cT.toLeft();
    return seriesEd(cT.getP()*m, cT.getQ()*m, cT.getR(), false);
  }

  seriesEd seriesEd::operator*(const polyEd & p) const
  {
	  // Modified 3/5/19
	  //return otimes(p);
	  return operator*(seriesEd(p));
  }

  seriesEd seriesEd::otimes(const polyEd & p, const seriesEd & s)
  {
    if (s.isEpsilon()) return seriesEd();  // retourne eps
    if (p.isEpsilon()) return seriesEd();  // retourne eps
    if (s.isTop() || p.isTop()) return seriesEd::Top(); // retourne T
   
    if (s.isPolynomial()) 	return seriesEd(p*s._q);
    seriesEd cT(s);
    cT.toRight();
    return seriesEd(p*cT.getP(),p*cT.getQ(), cT.getR(),true);
  }

  seriesEd seriesEd::otimes(const polyEd & p) const
  {
    if (this->isEpsilon() ||p.isEpsilon()) return seriesEd();  // retourne eps
    if (this->isTop()|| p.isTop()) return seriesEd::Top(); // retourne T

    if (isPolynomial()) 	return seriesEd(_q*polyEd(p));
    seriesEd cT(*this);
    cT.toLeft();
    return seriesEd(cT.getP()*p, cT.getQ()*p, cT.getR(), false);
  }

  // standard otimes of seriesEd
  seriesEd seriesEd::otimes(const seriesEd & s) const
  {
    if (this->isEpsilon()) return seriesEd();  // retourne eps
    if (s.isEpsilon()) return seriesEd();  // retourne eps

    if (this->isTop()) return seriesEd::Top();  // retourne T
    if (s.isTop()) return seriesEd::Top();  // retourne T


    if (isPolynomial() && s.isPolynomial())	return seriesEd(_q*s._q); // un polynome

    if (isPolynomial()) // polynomial by series
    {
      return seriesEd::otimes(_q, s);
    }
    if (s.isPolynomial())// série par polynome
    {
      return otimes(s._q);
    }
    // both are non-polynomial series

    seriesEd cT(*this);
    seriesEd cS(s);
    // cT and cS are series
    cT.toRight();  // *this = p+qr*
    cS.toLeft(); // s = p'+r'*q'
                // *this*s = (p+qr*)(p'+r'*q') = pp' +pr'*q' + qr*p'+qr*r'*q'
    series sa(poly(), poly(gd(0, 0)), cT.getR());
    series sb(poly(), poly(gd(0, 0)), cS.getR());
    //cout << "r=" << sa << endl;
    //cout << "rp=" << sb << endl;
    series prodstar = sa * sb;    
    seriesEd s4 = toSeriesEd(prodstar);
    //cout << "r*.rp*=" << s4 << endl;        
    s4 = s4 * cS._q;
    s4 = seriesEd::otimes(cT._q,s4);
    //cout << "q.r*.rp*.qp=" << s4 << endl;
    seriesEd s2 = seriesEd::otimes(cT._p,seriesEd(polyEd(), cS._q, cS._gammaL, cS._delta, false));
    //cout << "p.rp*.qp=" << s2 << endl;
    seriesEd s3 = seriesEd(polyEd(), cT._q, cT._gammaR, cT._delta, true).otimes(cS._p);
    //cout << "q.r*.pp=" << s3 << endl;
    seriesEd resultat=s2+s3+s4;
    //resultat.ToLeft();
    //cout << "s2+s3+s4 = " << resultat << endl;
    seriesEd s1 = seriesEd(cT._p*cS._p);
    //cout << "s1 = " << s1 << endl;
    resultat = resultat + s1;
    //cout << "resultat=" << resultat << endl;
    return (resultat);
  }

  // seriesEd*seriesEd depends on the chosen algorithm
  seriesEd seriesEd::operator*(const seriesEd & s) const
  {
	  switch (global::otimes_alg)
	  {
	  case global::OTIMES_ALG::otimes_std:
		  return this->otimes(s);
		  break;
	  case global::OTIMES_ALG::otimes_CD:
		  return this->otimesCD(s);
		  break;
	  default:
		  return this->otimes(s);
		  break;
	  }    
  }

  // [seriesEd]* depends on the chosen algorithm
  seriesEd seriesEd::star() const
  {
	  if (isEpsilon()) return seriesEd::E();
	  if (isTop()) return seriesEd::Top();

	  switch (global::star_alg)
	  {
	  case global::STAR_ALG::star_CD:
		  return starCD();
		  break;
	  case global::STAR_ALG::star_alternate:
		  return this->starAlternate();
		  break;
	  default:
		  return starCD();
		  break;
	  }    
  }

  seriesEd seriesEd::starAlternate() const
  {
    seriesEd copyT = *this;
    copyT.toRight();
    if (isEpsilon()) return seriesEd::E();
    unsigned int MU, BE;
    getLcmGain(MU, BE);
    if (MU != BE){ throw etvoException(400, "Impossible to compute the Kleene star of series if gain !=1");    }
    
    std::vector<series> tabS(MU);
    std::vector<poly> tabP(MU);
    std::vector<poly> tabQ(MU);
    
    gNg::setCanonForm(0); //each term w.d^t written g^n.N_MU.g^n'.d^t with n'<m
    polyEd p = copyT.getP();
    for (unsigned i = 0; i < p.size(); i++)
    {
      Ed m = p[i];
      E_op op = m.getE_op();
      if (op.getM() < MU){   op = op.extendBy(MU / op.getM());}
      auto terms = op.getTerms();
      for (gNg t : terms){
        tabP[t.getNr()] = tabP[t.getNr()] + gd(t.getNl(), m.getD());
      }    
    }
    polyEd q = copyT.getQ();
    for (unsigned i = 0; i < copyT.getQ().size(); i++)
    {
      Ed m = q[i];
      E_op op = m.getE_op();
      if (op.getM() < MU){    op = op.extendBy(MU / op.getM()); }
      auto terms = op.getTerms();
      for (gNg t : terms){
        tabQ[t.getNr()] = tabQ[t.getNr()] + gd(t.getNl(), m.getD());
      }      
    }
    // series (*this) decomposed 
    // s_0.nabla_MUg^0 + s_1.nabla_MU g^1 + ... + s_(MU-1).nabla_MU g^(MU-1)
    // s_i stored in tabS[i]
    for (unsigned i = 0; i < MU; i++){
      tabS[i] = series(tabP[i], tabQ[i], copyT.getR());   
      //cout << "tabS[" << i << "]=" << tabS[i] << endl;
    }

    seriesEd ss = star(tabS[0], MU, 0);  
    for (unsigned i = 1; i < MU; i++)
    {
      seriesEd stemp = ss*seriesEd::toSeriesEd(tabS[i])*(Ed::N(MU)*Ed::g(i));

      stemp.toRight();     
      poly ps, qs;
      gd rs = stemp.getR();
      for (unsigned j = 0; j < stemp.getP().size(); j++)
      {
        Ed m = stemp.getP()[j];
        E_op op = m.getE_op();
        auto terms = op.getTerms();
        for (gNg t : terms){  ps = ps + gd(t.getNl(), m.getD());  }
      }
      for (unsigned j = 0; j < stemp.getQ().size(); j++)
      {
        Ed m = stemp.getQ()[j];
        E_op op = m.getE_op();
        auto terms = op.getTerms();
        for (gNg t : terms){ qs = qs + gd(t.getNl(), m.getD()); }
      }
      series smmgds(ps, qs, rs);     
      stemp = star(smmgds, MU, i);
      ss = stemp * ss;      
    }
    return ss;
  }


  seriesEd seriesEd::starCD() const
  {
    if (isEpsilon()) return seriesEd::E();    
    unsigned int mu1, be1;
    getMaxGain(mu1, be1);
    if (mu1 != be1)
    {
      throw etvoException(400, "Impossible to compute the Kleene star of series if gain !=1");
    }
    matrix<series> Q = getCore(1);    
	//cout << Q << endl;
    matrix<series> N = seriesEd::getMatN(Q.GetRow());
	//cout << N << endl;
    matrix<series> Qk= Q * N;
	//cout << Qk << endl;
    //cout << "size core = " << Qk.GetRow() << "x" << Qk.GetColumn() << endl;
    Qk = Qk.star();
	seriesEd resultat = seriesEd::coreToSeriesEd(Qk);
    return resultat;
  }

  seriesEd seriesEd::infCD(const seriesEd & s) const
  { 
    if (isEpsilon() || s.isEpsilon()) return seriesEd::Epsilon();
    if (isTop()) return s;
    if (s.isTop()) return *this;

    unsigned int m1, b1, m2, b2;
    getLcmGain(m1, b1);
    s.getLcmGain(m2, b2);
    if ((m1*b2) != (m2*b1))
    {
      throw etvoException(310, "Only the infimum of seriesEd with equal gain is allowed!");
    }
    long M = Tools::lcm(m1, m2);
    matrix<series> Q1 = getCoreMax(M / m1);
    matrix<series> Q2 = s.getCoreMax(M / m2);
    matrix<series> Q = Q1.inf(Q2);
    seriesEd res = seriesEd::coreToSeriesEd(Q);
    return res;  
  }

  seriesEd seriesEd::inf(const seriesEd & s) const
  {
    return infCD(s);
  }

  seriesEd seriesEd::lfracCD(const seriesEd & s) const
  {
    if (isTop() || s.isEpsilon()) return seriesEd::Top();
    //else
    if (isEpsilon() || s.isTop()) return seriesEd::Epsilon();

    unsigned int mu1, be1, mu2, be2;
    getLcmGain(mu1, be1);
    s.getLcmGain(mu2, be2);
    unsigned int mul = Tools::lcm(mu1, mu2);
    //cout << "mul=" << mul << endl; 
    matrix<series> Q1 = getCoreMax(mul / mu1);
    matrix<series> Q2 = s.getCoreMax(mul / mu2);
    matrix<series> prod = Q1.lfrac(Q2);
    //cout << "size core = " << prod.GetRow() << "x" << prod.GetColumn() << endl;
    return seriesEd::coreToSeriesEd(prod);
   
  }

  seriesEd seriesEd::rfracCD(const seriesEd & s) const
  {
    if (isTop() || s.isEpsilon()) return seriesEd::Top();
    //else
    if (isEpsilon() || s.isTop()) return seriesEd::Epsilon();

    unsigned int mu1, be1, mu2, be2;
    getLcmGain(mu1, be1);
    s.getLcmGain(mu2, be2);
    unsigned int mul = Tools::lcm(be1, be2);
    //cout << "mul=" << mul << endl;
    matrix<series> Q1 = getCoreMax(mul / be1);
    matrix<series> Q2 = s.getCoreMax(mul / be2);
    matrix<series> prod = Q1.rfrac(Q2);
    //cout << "size core = " << prod.GetRow() << "x" << prod.GetColumn() << endl;
    return seriesEd::coreToSeriesEd(prod);
  }

  seriesEd seriesEd::lfrac(const seriesEd & s) const
  {
    return lfracCD(s);
  }

  seriesEd seriesEd::rfrac(const seriesEd & s) const
  {
    return rfracCD(s);
  }

  bool seriesEd::operator==(const seriesEd & s) const
  {
    seriesEd copyS(s);
    if (isLeftForm())
    {
      copyS.toLeft();
      return (_gammaL == copyS._gammaL && _delta == copyS._delta && _p == copyS._p && _q == copyS._q);
    }
    else
    {
      copyS.toRight();
      return (_gammaR == copyS._gammaR && _delta == copyS._delta && _p == copyS._p && _q == copyS._q);
    }
  }

  bool seriesEd::operator!=(const seriesEd & s) const
  {
    return !(operator==(s));
  }

  /* Basic implementation a<=b <-> a+b==b (Not efficient)
  bool seriesEd::operator<=(const seriesEd & s) const
  {
    return (((*this)+s)==s);
  }
  */

  bool seriesEd::operator<=(const seriesEd & s) const
  {
    if (isEpsilon() || s.isTop()) return true;
    if (s.isEpsilon()) return false;
    if (isTop()) return false;

    seriesEd copyT(*this), copyS(s);
    copyT.toLeft();
    copyS.toLeft();       
    double slopeS = ((double)copyS._delta) / copyS._gammaL;
    double slopeT = ((double)copyT._delta) / copyT._gammaL;

    if (slopeS < slopeT) return false;
    else
    {
      if (copyS.isPolynomial())  // both are polynomials (since slopes are equal)
      {
        return (copyT._q <= copyS._q);
      }      
      else
      {
        if (copyT.isPolynomial())  // this is Polynomial but not S
        {
          // series S up to the end of the periodic pattern s._q
          polyEd transS = copyS.getPolyUpTo(copyS._q[0].getD() + copyS._delta);
          return copyT._q <= transS;
        }
        else   // this and S are not polynomial (two series with possibly different slopes)
        {
          int tMax;
          tMax = std::max(copyT._q[0].getD() + copyT._delta, copyS._q[0].getD() + copyS._delta);
          // S must be developped at least more than *this
          int nDeltaT = ((tMax - copyS._q[0].getD()) / copyS._delta) +1;
          // tS corresponds to the least term wd^t of S after tMax
          int tS = copyS._q[0].getD() + nDeltaT * copyS._delta;
          polyEd transT = copyT.getPolyUpTo(tMax); //*this developped up to tMax
          polyEd transS = copyS.getPolyUpTo(tS);   // S developped up to tS
          return (transT <= transS);
        }
      }     
    }   
  }


  bool seriesEd::operator>=(const seriesEd & s) const
  {
    return s<=(*this);
  }


  etvo::matrix<series>  seriesEd::getCoreMax(unsigned ratio) const
  {
    etvo::matrix<series>  Core = getCore(ratio);
    etvo::matrix<series>  Em = getMatN(Core.GetRow());
    etvo::matrix<series>  Eb = getMatN(Core.GetColumn());
    return Em*Core*Eb;
  } 

  /* version 1 getCore KO something Wrong Available in etvo v13*/
  // version 2 getCore OK
  etvo::matrix<series>  seriesEd::getCore(unsigned ratio) const
  {
#ifdef TRACE
    cout << "seriesEd::GetCore" << endl;
#endif

    if (ratio < 1) ratio = 1;
    seriesEd cT(*this);
    cT.toRight();
    unsigned int M, B;
    cT.getLcmGain(M, B);  // the maximal M,B among all terms
    long m = M * ratio;
    long b = B * ratio;

#ifdef TRACE
    cout << "m=" << m << "b=" << b << endl;
#endif

    polyEd p = cT.getP();
    polyEd q = cT.getQ();
    gd r = cT.getR();
    // Core decomposition
    //Mu_m Q Beta_b
    //with Mu_m=[mu_m g^1mu_m g^2mu_m ... g^(m-1)mu_m]
    //with Beta_b=[beta_b g^(b-1) ... beta_b g^1 beta_b]'
    //and Q in MinMax[[g,d]]
    //Mu_m and Beta_b are implicit from the size of Q
    etvo::matrix<series>  Core(m, b);    
   
      int mul = Tools::lcm(r.getg(), b);
      int rat = mul / r.getg();
    #ifdef TRACE
      cout << "rat=" << rat << endl;
#endif

      if (rat != 1)
      {
        polyEd pR;
        for (int i = 0; i < rat; i++)
        {
          pR = pR + Ed(E_op::Gamma(i*r.getg()), i*r.getd());
        }
#ifdef TRACE
        cout << "pR=" << pR << endl;
#endif
        r = gd(r.getg()*rat, r.getd()*rat);
#ifdef TRACE
        cout << "r=" << r << endl;
#endif

        q = q * pR;
#ifdef TRACE
        cout << "q=" << q << endl;
#endif
      }
      
    
    gNg::setCanonForm(1);  // central form for gNg terms

    Fper::setAutoReduction(false);  // extension is now possible
    for (unsigned i = 0; i < p.size(); i++)
    {
      // all terms of p are decomposed on terms g^nl mu_M g^nc betâ_B g^nr
      Ed mo = p[i];
      E_op w;
      pair<unsigned, unsigned> per = mo.getE_op().getPeriodicity();
      if ((long)per.first != b)
      {
        unsigned ra = b / per.first;
        w = mo.getE_op().extendBy(ra);       
      }
      else w = mo.getE_op();
      vector<gNg> v = w.getTerms();
      int delta = mo.getD();
      for (gNg term : v)  // all gNg terms in central form
      {
        unsigned  li = term.getNl();
        unsigned  co = b - 1 - term.getNr();
        gd monom(term.getNc(), delta);
        series s(monom);
        Core(li, co) = s+ Core(li, co);        
      }
    }       

    for (unsigned i = 0; i < q.size(); i++)
    {
      Ed mo = q[i];
      E_op w;
      pair<unsigned, unsigned> per = mo.getE_op().getPeriodicity();
      if ((long)per.first != b)
      {
        unsigned ra = b / per.first;
        w = mo.getE_op().extendBy(ra);       
      }
      else w = mo.getE_op();
      int delta = mo.getD();
      vector<gNg> v = w.getTerms();
      for (gNg term : v)
      {
        unsigned  li = term.getNl();
        unsigned  co = b - 1 - term.getNr();
        gd monom(term.getNc(), delta); 
        gd rModif(r.getg() / b, r.getd());
       // cout << rModif << endl;
        series s(poly(),poly(monom),rModif);
        Core(li, co) = s+ Core(li, co);        
      }
    }
    Fper::setAutoReduction(true);
    gNg::setCanonForm(0);  //left form
    return Core;  
  }
  
  // returns the specific N matrix described by Johannes Trunk 
  etvo::matrix<series>  seriesEd::getMatN(unsigned size) 
  {
    etvo::matrix<series>  Em(size, size);
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
  
  // statix function Mu_m Q Beta_b -> seriesEd
  seriesEd seriesEd::coreToSeriesEd(const matrix<series> & core)
  { //cout << "Core -> series " << endl;
    matrix<series> Q(core); //copy of Core
    unsigned mu = Q.GetRow();
    unsigned beta = Q.GetColumn();
    seriesEd result;
    seriesEd lfactor, rfactor;
    for (int r = 0; r < (int) Q.GetRow(); r++)
    {
      lfactor = Ed(E_op::Gamma(r)*E_op::Mu(mu),0);
      for (int c = 0; c < (int)Q.GetColumn(); c++)
      {
        rfactor = Ed(E_op::Beta(beta)*E_op::Gamma(beta-1-c), 0);
		if (Q(r, c).isDegenerate())
		{
			cout << Q(r, c) << endl;
			throw etvoException(105, "A term of the Core matrix is degenerate. This computation is not handled yet.");
		}
        if (!Q(r, c).isEpsilon())
        {          
          seriesEd tmp = toSeriesEd(Q(r, c));
          tmp = lfactor * tmp*rfactor;                 
          result = result + tmp;
        }        
      }
    }
    return result;
  }

 
  // Correction 11/10/18
  // static function series-> seriesEd
  seriesEd seriesEd::toSeriesEd(const series & serieS)
  {
    if (serieS.isEpsilon()) return seriesEd::Epsilon();    
    series s(serieS);       
    polyEd P, Q;
    P = polyEd::toPolyEd(s.getp());
    Q = polyEd::toPolyEd(s.getq());   
    return seriesEd(P, Q, s.getr(), true);
  }


  // seriesEd->serie
  series seriesEd::toSeries() const
  {
    seriesEd copy(*this);
    copy.toLeft();
    poly p,q;
    for (unsigned int i = 0; i < copy._p.size(); i++)
    {
      p = p + gd(copy._p[i].getE_op().Fw(0), copy._p[i].getD());
    }
    for (unsigned int i = 0; i<copy._q.size(); i++)
    {
      q = q + gd(copy._q[i].getE_op().Fw(0), copy._q[i].getD());
    }
    return series(p,q,copy.getR());
  }
  //Responses to I, g^1I, g^2I ...
  vector<series> seriesEd::toImpulseResponse() const
  {
    // the number of series is the Beta value of *this
    seriesEd copy(*this);
    long beta = copy.getMaxGain().second;
    vector<series> decomp;
    for (long i = 0; i < beta; i++)
    {      
      decomp.push_back(copy.toSeries());
      copy = copy * seriesEd(Ed::g(1));
    }
    return decomp;
  }

  /* Replaced May 2019 */
  seriesEd seriesEd::toCausal(const seriesEd & s)
  {
	  if (s.isEpsilon()) return seriesEd::Epsilon();
	  //seriesEd copy(s);
	  matrix<series> Qhat = s.getCoreMax(1);
	  for (unsigned m = 0; m < Qhat.GetColumn(); m++) {
		  for (unsigned n = 0; n < Qhat.GetRow(); n++) {
			  Qhat(n, m) = Qhat(n, m).prcaus();
		  }
	  }
	  return seriesEd::coreToSeriesEd(Qhat);
  }
   

  /* Old version Replaced by the projection in the Core form
  seriesEd seriesEd::toCausal(const seriesEd & s)
  {
    if (s.isEpsilon()) return seriesEd::Epsilon();
    seriesEd copy(s);
    copy.toRight();
    if (copy.isPolynomial())
    {
      return seriesEd(polyEd::toCausal(copy.getQ()));
    }
    while (copy._q[0].getD() < 0)
    {      
        Ed ajout(copy._q[0] * Ed(E_op::Gamma(copy._gammaR), copy._delta));
        copy._p.add(copy._q[0]);  //_p = _p + _q[0];
        copy._q.removeTerm(0);
        copy._q.add(ajout); // _q = _q + ajout;           
    }
    copy._p = polyEd::toCausal(copy._p);
    copy.canon();
    return copy;
  }
  */

  
  seriesEd seriesEd::starPolyBased() const
  {   
    if (isPolynomial())
    {
      return _q.star();
    }
    else   // étoile de _p + _qr*
    {     
      if (_q[0].getE_op().getPeriodicity().first == _q[0].getE_op().getPeriodicity().second)
      {
        seriesEd copy(*this);
        copy.toRight();  // _p+_q r*
        unsigned int M;
        long nu = _gammaR;
        long tau = _delta;
        M = copy._q[0].getE_op().getM();
        for (unsigned int i = 0; i<copy._p.size(); i++) M = Tools::lcm(M, copy._p[i].getE_op().getM());
        for (unsigned int i = 0; i<copy._q.size(); i++) M = Tools::lcm(M, copy._q[i].getE_op().getM());

        //cout << "M=" <<M << endl;
        // on développe (g^nud^tau)* = (g^NUd^TAU)*(e + g^nu d^tau + g^2nud^2tau ...)
        //							 = (g^NU d^TAU)* facteur
        //							 = (g^NUd^TAU)*(e + g^nup d^taup + g^2nupd^2taup ...)
        polyEd facteur;
        for (unsigned int i = 0; i <= M; i++)	facteur = facteur + Ed(E_op::Gamma(i*nu), tau*i);
        gd R(M*nu, M*tau);
        polyEd Qp = copy._q*facteur;  // q' = q(e+gnudtau+g^2nud^2tau ...)(g^Mnu d^Mtau)*

                                 //	cout << Qp.ToStringOp() << endl;
                                 // s* = p*(e + Qp (Qp+R+p)*) = terme1 (e + Qp*(terme2))

        seriesEd terme1;
        if (copy._p.isEpsilon()) terme1 = Ed(E_op::Gamma(0), 0);
        else terme1 = _p.star();
        seriesEd terme2((Qp + Ed(E_op::Gamma(R.getg()), R.getd()) + copy._p));
        seriesEd terme3(seriesEd(Ed(E_op::Gamma(0), 0)) + seriesEd(Qp)*terme2);
        //cout << terme1.ToString() << endl;
        //cout << terme2.ToString() << endl;
        //cout << terme3.ToString() << endl;
        return terme1*terme3;
      }
      else
      {
        throw "The series must be with gain==1 !";
      }
    }
  }

  /// computes the star of a particular form 
  /// s=p+qr* is a series in MinMax[[g,d]] with r=g^(a.M)d^t
  /// [s.nabla_M.g^k]* = e+ s.[s']*.nabla_M g^k
  // where s' = p'+q'r* is a series in MinMax[[g,d]] 
  seriesEd seriesEd::star(const etvo::series & s, unsigned nablaM, int gK)
  {
	series scopy = s;
    poly p, q;
    gd r;
    p = scopy.getp();
    q = scopy.getq();
    r = scopy.getr();
    gd rmodif;
    if (r.getg() % nablaM != 0)
    {
      // extension of series s = p + q.(e+r+r^2+...)(g^(alpha.nu)d^(alpha.\tau))*
      long nu = Tools::lcm((long)nablaM, r.getg());
      long alpha = (nu / r.getg());
      rmodif = gd(nu, alpha*r.getd());
      poly mul = gd(0, 0);
      for (long i = 0; i < alpha; i++)
      {
        mul = mul + gd(i*r.getg(), i*r.getd());
      }
      q = q * mul;
      r = rmodif;
    }
       // s=p+qr* is now compatible with assumptions
       // create s'
       poly pp, qp;

      for (unsigned i = 0; i < p.getn(); i++)
      {
        gd m = p.getpol(i);
        gd mp((m.getg() + gK) / nablaM * nablaM, m.getd());
        pp = pp + mp;
      }

      for (unsigned i = 0; i < q.getn(); i++)
      {
        gd m = q.getpol(i);
        gd mp((m.getg() + gK) / nablaM * nablaM, m.getd());
        qp = qp + mp;
      }
      series sp(pp, qp, r);
      
      seriesEd sStar = seriesEd::E();
      sStar = sStar + seriesEd::toSeriesEd(s*sp.star())*(Ed::N(nablaM)*Ed::g(gK));
      return  sStar;
  }
     
/* rfrac/lfrac as a fixed point algorithm : while not found ... */
/* see version etvo13 */  
  
}//end namespace etvo
