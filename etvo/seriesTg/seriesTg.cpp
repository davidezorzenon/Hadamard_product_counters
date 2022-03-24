#include "seriesTg.h"
#include "../common/EtvoTools.h"
#include<vector>
#include "../etop/T_op.h"
#include "../common/etvoException.h"
#include "../common/global.h"

#include<algorithm>

//#define TRACE

using namespace std;
namespace etvo
{
  
  seriesTg tg(int n) { return seriesTg(Tg::g(n)); }
  seriesTg td(int t) { return seriesTg(Tg::d(t)); }
  seriesTg tD(unsigned w) { return seriesTg(Tg::D(w)); }
  

	seriesTg td(const std::vector<int> & delays)
	{
		return seriesTg(Tg(T_op::deltaVar(delays), 0));
	}
  
  
	// for matrix<seriesTg>
	seriesTg star(const seriesTg & s)
	{
		return s.star();
	}

	seriesTg oplus(const seriesTg & s1, const seriesTg & s2)
	{
		return s1 + s2;
	}
	seriesTg inf(const seriesTg & s1, const seriesTg & s2)
	{
		return s1.inf(s2);
	}

	seriesTg otimes(const seriesTg & s1, const seriesTg & s2)
	{
		return s1 * s2;
	}

	seriesTg lfrac(const seriesTg & s1, const seriesTg & s2)
	{
		return s1.lfrac(s2);
	}

	seriesTg rfrac(const seriesTg & s1, const seriesTg & s2)
	{
		return s1.rfrac(s2);
	}
  
	
	std::ostream & operator<<(std::ostream & f, const seriesTg & s) {
		f << s.toString();
		return f;
	}

	seriesTg seriesTg::Epsilon()
	{
		return seriesTg();
	}

	seriesTg seriesTg::Top()
	{
		return seriesTg(polyTg::Top());
	}

  seriesTg seriesTg::E()
	{
		return polyTg::E();
	}

	bool seriesTg::isPolynomial() const
	{
		return _deltaR == 0 || _deltaL==0;
	}

	bool seriesTg::isE() const
	{
		if (isPolynomial())
		{
			return getQ() == polyTg::E();
		}
		else return false;
	}

  seriesTg::seriesTg(bool TopNotE)
	{
		if (TopNotE)
		{
			setTop();
			_droite = true;
			_gamma = 1;			
			_deltaL=_deltaR = 0;
			_p = polyTg::Top();
			_q = polyTg::Top();
		}
		else
		{
			_droite = true;
			_gamma = 1;			
			_deltaL = _deltaR = 0;
			_q = polyTg(Tg::E());
		}
	}

	seriesTg::seriesTg():ISterm(true)  // eps = eps + eps (g^1 d^0)*
	{
		_droite = true;
		_gamma = 1;		
		_deltaL=_deltaR = 0;
	}

	//Convention : Forme canonique des polynomes p=eps r=g^1d^0
  seriesTg::seriesTg(const Tg & m) :ISterm(false) // eps = eps + m (g^1 d^0)*
	{
		_droite = true;		
    _gamma = 1;
    _deltaL = _deltaR = 0;
		_q = polyTg(m);
	}


	seriesTg::seriesTg(const polyTg & q) :ISterm(false)  // eps = eps + q (g^1 d^0)*
	{
		_droite = true;
		_gamma = 1;
		_deltaL = _deltaR = 0;
		_q = q;
		if (_q.isEpsilon()) setEpsilon();
		if (_q.isTop()) setTop();
	}

  
	
  seriesTg::seriesTg(const polyTg & p, const polyTg & q, const gd & r, bool droite) :seriesTg(p, q, r.getg(), r.getd(), droite)
	{}


  seriesTg::seriesTg(const polyTg & p, const polyTg & q,
                    long gamma, long delta, bool droite):ISterm(false),_p(p), _q(q)
  {
    if (gamma<0) gamma = 0;
    if (delta<0) delta = 0;

	if(delta==0) gamma = 1;
	if (gamma == 0 && delta != 0)
	{
		throw etvoException(201, "[g0.d+inf] degenerate cases are not handled yet!");
	}
    _gamma = gamma;
    _deltaR = _deltaL = delta;
    _droite = droite;
    _p = _p + _q;
    _p.canon();
    _q.canon();
    if (_q.isEpsilon())
    {
      seriesTg  tmp(p);
      *this = tmp;
    }
    else
    {
      degenerateCase();
      if (_droite)
      {
        _deltaR = delta;
        toProperFormR();
      }
      else
      {
        _deltaL = delta;
        toProperFormL();
      }
    }
  }
  


  std::string seriesTg::toString() const
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
        Tg r(T_op::delta(_deltaR), _gamma);
        resultat += ".[" + r.toString() + "]*";
      }
    }
    else
    {
      if (!_p.isEpsilon())	resultat += "((" + _p.toString() + "))+";
      if (!ispoly)
      {
        Tg rp(T_op::delta(_deltaL), _gamma);
        resultat += "[" + rp.toString() + "]*.";
      }
      resultat += "(" + _q.toString() + ")";
    }
    return resultat;
  }

  std::string seriesTg::toStringAsDeltaVar() const
  {
    bool ispoly = isPolynomial();
    std::string resultat;
    if (isEpsilon()) return "eps";
    if (_droite) // right form p+q.r*
    {
      if (!_p.isEpsilon())	resultat += "((" + _p.toStringAsDeltaVar() + "))+";
      resultat += "(" + _q.toStringAsDeltaVar() + ")";
      if (!ispoly)
      {
        Tg r(T_op::delta(_deltaR), _gamma);
        resultat += ".[" + r.toString() + "]*";
      }
    }
    else
    {
      if (!_p.isEpsilon())	resultat += "((" + _p.toStringAsDeltaVar() + "))+";
      if (!ispoly)
      {
        Tg rp(T_op::delta(_deltaL), _gamma);
        resultat += "[" + rp.toString() + "]*.";
      }
      resultat += "(" + _q.toStringAsDeltaVar() + ")";
    }
    return resultat;
  }
  

  polyTg seriesTg::getP() const
  {
    return _p;
  }

  polyTg seriesTg::getQ() const
  {
    return _q;
  }

  gd seriesTg::getR() const
  {
    if (isRightForm())	return gd(_gamma, _deltaR);
    else return gd(_gamma, _deltaL);
  }

  bool seriesTg::isRightForm() const
  {
    return this->_droite == true;
  }

  bool seriesTg::isLeftForm() const
  {
    return this->_droite == false;
  }

  void seriesTg::degenerateCase()
  {
    if (_deltaR == 0 || _deltaL==0) // polynomial
    {
      _gamma = 1;      
      _deltaL = _deltaR = 0;
      _q = _p + _q;
      _p = polyTg::Epsilon(); //p=eps
    }
  }
  
  
  void seriesTg::toRight()
  {
    if (isLeftForm()) this->rightLeft();
  }

  void seriesTg::toLeft()
  {
    if (isRightForm())	this->rightLeft();
  }
  
  void seriesTg::rightLeft()
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
      long MB = _q[0].getT_op().getMB();
      for (i = 1; i<(long)_q.size(); i++)	MB = Tools::lcm(MB, (long)_q[i].getT_op().getMB());      

      polyTg facteur;
      for (i = 0; i <= MB - 1; i++)
        facteur = facteur + Tg(T_op::delta(i*_deltaR), i*_gamma);
      polyTg qp = _q*facteur;
      _gamma = MB*_gamma;
      _deltaL = MB*_deltaR;
      _q = qp;
      _droite = false;
      toProperFormL();
    }
    else //passe de Gauche à Droite
    {
      int i = 0;
      long MB = _q[0].getT_op().getMB();
      for (i = 1; i<(long)_q.size(); i++) MB = Tools::lcm(MB, (long)_q[i].getT_op().getMB());
     
      polyTg facteur;
      for (i = 0; i <= MB - 1; i++)
        facteur = facteur + Tg(T_op::delta(i*_deltaL), i*_gamma);

      polyTg qp = facteur*_q;
      _gamma = MB*_gamma;
      _deltaR = MB*_deltaL;
      _q = qp;
      _droite = true;
      toProperFormR();
    }
  }
  

  bool seriesTg::isProper() const
  {
    bool result;
    result = _p.isCanon() && _q.isCanon();
    if (!result) return false;
    if (_p.size() != 0)
    {
      Tg m1 = _p[_p.size() - 1];
      Tg m2 = _q[0];
      if (m1.getG() >= m2.getG()) return false;
      if (!(m1.getT_op() < m2.getT_op())) return false;
    }
    gd r = getR();

    if (isRightForm())
    {
      Tg m1 = _q[_q.size() - 1];
      Tg m2 = _q[0] * Tg(T_op::delta(r.getd()), r.getg());
      if (m1.getG() >= m2.getG()) return false;
      if (!(m1.getT_op() < m2.getT_op())) return false;
    }
    else
    {
      Tg m1 = _q[_q.size() - 1];
      Tg m2 = Tg(T_op::delta(r.getd()), r.getg()) *_q[0] ;
      if (m1.getG() >= m2.getG()) return false;
      if (!(m1.getT_op() < m2.getT_op())) return false;
    }
    return true;
  }
  
  void seriesTg::canon()
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

  
  void seriesTg::toProperFormL()
  {
    if (_gamma>0 && _deltaL>0)
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
        Tg factor(T_op::delta(_deltaL), _gamma);
        _q.add(factor*_q[0]);
        _q.removeTerm(_q.size() - 1);
      }     
    }
  }

  void seriesTg::toProperFormR()
  {
    if (_gamma>0 && _deltaR>0)
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
        Tg factor(T_op::delta(_deltaR), _gamma);
        _q.add(_q[0] * factor);
        _q.removeTerm(_q.size() - 1);        
      }         
    }
  }
  
  

  void seriesTg::reductionPeriodicR()
  {
    // suppose que WN >W1.delta^_deltaR et nN<n1+_gamma
    // réduit la taille du périodique si possible

    //adaptation de l'algo de Laurent H
    long indice = min(_deltaR, _gamma);
    while (indice >= 2 && _q.size()>1)
    {	// est-ce que indice divise _delta et _gammaR
      if (!((_gamma%indice) == 0 && (_deltaR%indice) == 0))
      {
        indice--;  //indice n'est pas diviseur
      }
      else
      {
        polyTg nouveau, etendu;
        long nu = _gamma / indice;
        long tau = _deltaR / indice;
        T_op tTau = T_op::delta(tau);
        Tg nutau;
        //motif supposé
        long i = 0;
        while (i < (long) _q.size() && (_q[i].getT_op())<_q[0].getT_op().otimes(tTau) && _q[i].getG()<(_q[0].getG() + nu))
        {
          nouveau = nouveau + _q[i];
          i++;
        }
        etendu = nouveau;
        for (i = 1; i<indice; i++)
        {
          nutau = Tg(T_op::delta(tau*i), nu*i);
          etendu = etendu + (nouveau*nutau);
        }

        if (etendu == _q)
        {
          _q = nouveau;
          _gamma = nu;
          _deltaR = tau;
          indice = min(nu, tau);
        }
        else
        {
          indice--;
        }
      }
    }

  }

  
  void seriesTg::reductionPeriodicL()
  {
    // suppose que WN >W1.delta^_deltaR et nN<n1+_gamma
    // réduit la taille du périodique si possible

    //adaptation de l'algo de Laurent H
    long indice = min(_deltaL, _gamma);
    while (indice >= 2 && _q.size()>1)
    {	// est-ce que indice divise _delta et _gammaR
      if (!((_gamma%indice) == 0 && (_deltaL%indice) == 0))
      {
        indice--;  //indice n'est pas diviseur
      }
      else
      {
        polyTg nouveau, etendu;
        long nu = _gamma / indice;
        long tau = _deltaL / indice;
        T_op tTau = T_op::delta(tau);
        Tg nutau;
        //motif supposé
        long i = 0;
        while (i < (long)_q.size() && (_q[i].getT_op())<tTau.otimes(_q[0].getT_op()) && _q[i].getG()<(_q[0].getG() + nu))
        {
          nouveau = nouveau + _q[i];
          i++;
        }
        etendu = nouveau;
        for (i = 1; i<indice; i++)
        {
          nutau = Tg(T_op::delta(tau*i), nu*i);
          etendu = etendu + (polyTg(nutau)*nouveau);
        }

        if (etendu == _q)
        {
          _q = nouveau;
          _gamma = nu;
          _deltaL = tau;
          indice = min(nu, tau);
        }
        else
        {
          indice--;
        }
      }
    }

  }

  void seriesTg::toProperPeriodicR()
  { // Lead to the size of _q to be less than the window _gammaR,_delta
    // (q0+q1+...+qn)r* = q0 + (q1+..+qn+q0r)r*
    // q0 is inserted into _p and _q is changed    
    if (!(_q[_q.size() - 1].getG() < (_q[0].getG() + _gamma) && _q[_q.size() - 1].getT_op()<_q[0].getT_op().otimes(T_op::delta(_deltaR))))
    {
      Tg ajout(_q[0] * Tg(T_op::delta(_deltaR), _gamma));      
      _p.add(_q[0]);    //_p = _p + _q[0];
      _q.removeTerm(0);      
      _q.add(ajout);  //_q = _q + ajout;
      toProperPeriodicR();
    }    
  }
    
  void seriesTg::toProperPeriodicL()
  {// Lead to the size of _q to be less than the window _gammaR,_delta
    // (q0+q1+...+qn)r* = q0 + (q1+..+qn+q0r)r*
    // q0 is inserted into _p and _q is changed    
    if (!(_q[_q.size() - 1].getG() < (_q[0].getG() + _gamma) && _q[_q.size() - 1].getT_op()<T_op::delta(_deltaL).otimes(_q[0].getT_op())))
    {
      Tg ajout(Tg(T_op::delta(_deltaL), _gamma)*_q[0]);      
      _p.add(_q[0]); //_p = _p + _q[0];
      _q.removeTerm(0);      
      _q.add(ajout); //_q = _q + ajout;
      toProperPeriodicL();
    }   
  }

  
  void seriesTg::toProperTransientR()
  {
    // The transient _p overlaps the periodic pattern _q
    if (!_p.isEpsilon())
    {
      if (_p[_p.size() - 1].getG() >= _q[0].getG() || !(_q[0].getT_op() > _p[_p.size() - 1].getT_op()))
      {
        Tg ajout(_q[0] * Tg(T_op::delta(_deltaR), _gamma));
        _p.add(_q[0]);  //_p = _p + _q[0];
        _q.removeTerm(0);
        _q.add(ajout); // _q = _q + ajout;
        toProperTransientR();
      }
    }
  }

  void seriesTg::toProperTransientL()
  {
    // The transient _p overlaps the periodic pattern _q
    if (!_p.isEpsilon())
    {
      if (_p[_p.size() - 1].getG() >= _q[0].getG() || !(_q[0].getT_op() > _p[_p.size() - 1].getT_op()))
      {
        Tg ajout(Tg(T_op::delta(_deltaL), _gamma)*_q[0]);
        _p.add(_q[0]);  // _p = _p + _q[0];
        _q.removeTerm(0);
        _q.add(ajout);  //_q = _q + ajout;
        toProperTransientL();
      }
    }
  }

  void seriesTg::reductionTransientR()
  {
    if (!_p.isEpsilon())
    {
      if (_p[_p.size() - 1] * Tg(T_op::delta(_deltaR), _gamma) == _q[_q.size() - 1])
      {
        _q = _q + _p[_p.size() - 1];
        _q.removeTerm(_q.size() - 1);
        _p.removeTerm(_p.size() - 1);
        reductionTransientR();
      }
    }
  }


  void seriesTg::reductionTransientL()
  {
    if (!_p.isEpsilon())
    {
      if (Tg(T_op::delta(_deltaL), _gamma)*_p[_p.size() - 1] == _q[_q.size() - 1])
      {
        _q = _q + _p[_p.size() - 1];
        _q.removeTerm(_q.size() - 1);
        _p.removeTerm(_p.size() - 1);
        reductionTransientL();
      }
    }
  }

  bool seriesTg::operator==(const seriesTg & s) const
  {
    seriesTg copyS(s);
    if (isLeftForm())
    {
      copyS.toLeft();
      return (_deltaL == copyS._deltaL && _gamma == copyS._gamma && _p == copyS._p && _q == copyS._q);
    }
    else
    {
      copyS.toRight();
      return (_deltaR == copyS._deltaR && _gamma == copyS._gamma && _p == copyS._p && _q == copyS._q);
    }
  }

  bool seriesTg::operator!=(const seriesTg & s) const
  {
    return !(operator==(s));
  }
      
  // static function : develops the first terms of series up to d.deltaT
  // but p,q,r is not supposed to be a canonical form
  // note : r is assumed to be different from gd(n,0) [polynomial]
  polyTg seriesTg::getPolyUpTo(int gammaN, const polyTg & p, const polyTg & q, const gd & r, bool droite)
  {
    if (r.getd() == 0) return (p + q);  // abnormal situation

    int extra = r.getg() + q.getTerms().back().getG() - q.getTerms().front().getG();
    
    polyTg result(p);
    // insert all terms of p, even if some of them will be removed
    if (droite)
    {
      for (unsigned i = 0; i < q.size(); i++)
      {
        Tg factor(T_op::delta(r.getd()), r.getg());
        Tg term = q[i];
        while (term.getG() <= (gammaN + extra))
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
        Tg factor(T_op::delta(r.getd()), r.getg());
        Tg term = q[i];
        while (term.getG() <= (gammaN + extra))
        {
          result = result + term;
          term = factor * term;
        }
      }
    }
    while (result.size() != 0 && result[result.size() - 1].getG() > gammaN) { result.removeTerm(result.size() - 1); }
    return result;
  }

  // returns max of (Delta)
  unsigned int seriesTg::getMaxGain() const
  {
    unsigned int D = 0;    
    if (!isEpsilon())
    {
      D=std::max(D,_p.getMaxGain());
      D=std::max(D,_q.getMaxGain());      
    }
    else // convention
    {
      D = 1;
    }
    return D;
  }

  // returns the lcm of  Delta of all terms
  unsigned int seriesTg::getLcmGain() const
  {
    //the least common multiple of all gains
    unsigned int D = 1;   
    if (!isEpsilon())
    {      
      for (long i = 0; i<(long)_p.size(); i++)
      {
        D = Tools::lcm(D, _p[i].getT_op().getMB());
      }
      for (long i = 0; i<(long)_q.size(); i++)
      {
        D = Tools::lcm(D, _q[i].getT_op().getMB());
      }
    } 
    return D;   
  }
  
 
/*
// This methods aims at developing the first terms of series up to g.gammaN
// 2 cases : polynomial or not
  polyEd seriesEd::getPolyUpTo(int gammaN) const
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
*/

// ADAPTED FROM mmgd LH (translated from seriesEd::getDominationTimeLH)
long seriesTg::getDominationEventLH(const seriesTg & slow, const seriesTg & fast)
{  
  gd rs = slow.getR();
  gd rf = fast.getR();
  // first terms of qfast qslow and last term of qfast
  gd qs0, qf0,qflast;

  qs0 = gd(slow._q[0].getG(),(long)(slow._q[0].getT_op().getRw().getyMin0()));
  qf0 = gd(fast._q[0].getG(),(long)(fast._q[0].getT_op().getRw().getyMax0()));
  qflast= gd((long)(fast._q[fast._q.size() - 1].getG()), (long)(fast._q[fast._q.size() - 1].getT_op().getRw().getyMax0()+1));

  long t2 = qflast.getd();
  long n2 = qflast.getg();

  long k1 = rs.getg()*(t2 - qs0.getd() + rs.getd()) + rs.getd()*(qs0.getg() - qf0.getg());
  long k2 = rs.getd()*rf.getg() - rs.getg()*rf.getd();
  long k = std::max(std::max((int)ceil((double)k1 / k2), 0), (int)ceil((double)(qs0.getg() - qf0.getg()) / rf.getg()));
  long Ndomin = n2 + k * rf.getg();
  return Ndomin;
}

seriesTg seriesTg::operator+(const seriesTg  & s) const
{
  return this->oplus(s);
}

seriesTg seriesTg::oplus(const polyTg & p) const
{
	return oplus(seriesTg(p));
}

seriesTg seriesTg::oplus(const seriesTg & s) const
 {
    if (isTop() || s.isTop()) return Top();
    if (isEpsilon()) return s;
    if (s.isEpsilon()) return *this;

    if (isPolynomial() && s.isPolynomial())
    {
      return seriesTg(_q + s._q);
    }

    if (isPolynomial())  // *this=poly but s is a series
    {                    // q + (p'+r'*q')
      seriesTg copyS(s);
      copyS.toLeft();
      return seriesTg(copyS.getP() + _q, copyS.getQ(), copyS.getR().getg(), copyS.getR().getd(), false);
    }

    if (s.isPolynomial()) // s=poly but *this is a series
    {                     // (p+r*q) + q'
      seriesTg copyT(*this);
      copyT.toLeft();
      return seriesTg(copyT.getP() + s.getQ(), copyT.getQ(), copyT._gamma, copyT._deltaL, false);
    }

		// *this and  s are both not polynomials   
    {
      seriesTg copyS(s);
      seriesTg copyT(*this);
      // put the two series in left form  p+r*q
      copyT.toLeft();
      copyS.toLeft();

      gd r = copyT.getR(), rp = copyS.getR();
      long nu = r.getg(), nup = rp.getg();
      long tau = r.getd(), taup = rp.getd();     

      if ((nu*taup) == (nup*tau)) //both series with the same slope
      {
        #ifdef TRACE
        cout << "oplus seriesTg same slope ..." << endl;
        #endif

        long NU = Tools::lcm(nu, nup);
        long TAU = (taup*NU) / nup;
        // on développe (g^nud^tau)* = (g^NUd^TAU)*(e + g^nu d^tau + g^2nud^2tau ...)
        //							 = (g^NU d^TAU)* facteur
        //							 = (g^NUd^TAU)*(e + g^nup d^taup + g^2nupd^2taup ...)
        polyTg facteur, facteurp;
		        
        for (long i = 0; i < (NU / nu); i++)
        {
          //facteur = facteur + Ed(E_op::Gamma(i*nu), tau*i);
			facteur = facteur + Tg(T_op::delta(tau*i),i*nu);
        }
        //for (long j = 0; j <= (NU / nup); j++) //Modif !!!
        for (long j = 0; j < (NU / nup); j++)
        {
          //facteurp = facteurp + Ed(E_op::Gamma(j*nup), taup*j);
		  facteurp = facteurp + Tg(T_op::delta(taup*j), j*nup);
        }
        polyTg f = (facteur*copyT._q) + (facteurp*copyS._q);
        polyTg som = copyT._p + copyS._p;
       // cout << "f= " << f << endl;
       // cout << "som=" << som << endl;
        //cout << "begin constr series(som,f,NU,TAU,false)" << endl;
        seriesTg result(som, f, NU, TAU, false);
        return result;
      }
      else  // different slopes
      {
        // cout << "oplus seriesTg different slopes" << endl;
        seriesTg * slow, *fast;
        if ((double(tau) / nu)>(double(taup) / nup))  // *this is ultimately dominating
        {
          slow = &copyT;
          fast = &copyS;
        }
        else
        {
          slow = &copyS;
          fast = &copyT;
        }       
        seriesTg &sslow = *slow;
        seriesTg &sfast = *fast;        
		
        long DominationN = getDominationEventLH(sslow, sfast);
        
        gd r1 = sslow.getR();
        gd r2 = sfast.getR();
                
        if ((DominationN/sfast.getR().getg()) > global::LIMIT_TRANS_DELTA)
        {
          cout << "DomN=" << DominationN << endl;
          throw etvoException(901, "Too much elements in transient!");
        }

        polyTg P, Q;
        P = sslow._p + sfast._p;
        vector<Tg> vPToAdd,vQToAdd;

        // one adds to P monomials from slow._q up to domination
        long k = 0;
        long l = 0;
        while ((sslow._q[k].getG() + l*r1.getg())<=(DominationN))
        {  
		  vPToAdd.push_back(Tg(T_op::delta(l*r1.getd()), l*r1.getg())*sslow._q[k]);
          k++;
          if (k == (long)sslow._q.size())
          {
            k = 0;
            l++;
          }
        }
       
        for (long i = 0; i<(long)sslow._q.size(); i++)
        {                   
		  vQToAdd.push_back(Tg(T_op::delta(l*r1.getd()), l*r1.getg())*sslow._q[k]);
          k++;
          if (k ==(long) sslow._q.size())
          {
            k = 0;
            l++;
          }
        }

        // one adds to P monomials from sfast._q up to domination
        k = 0;
        l = 0;
        while ((sfast._q[k].getG() + l*r2.getg())<(DominationN))
        {
		  vPToAdd.push_back(Tg(T_op::delta(l*r2.getd()), l*r2.getg())*sfast._q[k]);
          k++;
          if (k ==(long)sfast._q.size())
		  {
            k = 0;
            l++;
          }
        }
        P = P + polyTg(vPToAdd);        
        return seriesTg(P, polyTg(vQToAdd), r1.getg(), r1.getd(), false);
      }
    }
  }

  seriesTg seriesTg::otimes(const seriesTg & s) const
  {
	  if (this->isEpsilon()) return seriesTg();  // retourne eps
	  if (s.isEpsilon()) return seriesTg();  // retourne eps

	  if (this->isTop()) return seriesTg::Top();  // retourne T
	  if (s.isTop()) return seriesTg::Top();  // retourne T


	  if (isPolynomial() && s.isPolynomial())	return seriesTg(_q*s._q); // un polynome

	  if (isPolynomial()) // polynomial by series
	  {
		  return seriesTg::otimes(_q, s);
	  }
	  if (s.isPolynomial())// série par polynome
	  {
		  return otimes(s._q);
	  }
	  // both are non-polynomial series

	  seriesTg cT(*this);
	  seriesTg cS(s);
	  // cT and cS are series
	  cT.toRight();  // *this = p+qr*
	  cS.toLeft(); // s = p'+r'*q'
				   // *this*s = (p+qr*)(p'+r'*q') = pp' +pr'*q' + qr*p'+qr*r'*q'
	  series sa(poly(), poly(gd(0, 0)), cT.getR());
	  series sb(poly(), poly(gd(0, 0)), cS.getR());
	  //cout << "r=" << sa << endl;
	  //cout << "rp=" << sb << endl;
	  series prodstar = sa * sb;
	  seriesTg s4 = toSeriesTg(prodstar);
	  //cout << "r*.rp*=" << s4 << endl;        
	  s4 = s4 * cS._q;
	  s4 = seriesTg::otimes(cT._q, s4);
	  //cout << "q.r*.rp*.qp=" << s4 << endl;
	  seriesTg s2 = seriesTg::otimes(cT._p, seriesTg(polyTg(), cS._q, cS._gamma, cS._deltaL, false));
	  //cout << "p.rp*.qp=" << s2 << endl;
	  seriesTg s3 = seriesTg(polyTg(), cT._q, cT._gamma, cT._deltaR, true).otimes(cS._p);
	  //cout << "q.r*.pp=" << s3 << endl;
	  seriesTg resultat = s2 + s3 + s4;
	  //resultat.ToLeft();
	  //cout << "s2+s3+s4 = " << resultat << endl;
	  seriesTg s1 = seriesTg(cT._p*cS._p);
	  //cout << "s1 = " << s1 << endl;
	  resultat = resultat + s1;
	  //cout << "resultat=" << resultat << endl;
	  return (resultat);
  }


  seriesTg seriesTg::operator*(const seriesTg & s) const
  {
	  return this->otimes(s);
  }

  
  // [static] function series-> seriesTg
  seriesTg seriesTg::toSeriesTg(const series & serieS)
  {
	  if (serieS.isEpsilon()) return seriesTg::Epsilon();
	  series s(serieS);
	  polyTg P, Q;
	  P = polyTg::toPolyTg(s.getp());
	  Q = polyTg::toPolyTg(s.getq());
	  return seriesTg(P, Q, s.getr(), true);
  }

  seriesTg seriesTg::operator*(const Tg & m) const
  {
	  return otimes(m);
  }
  seriesTg seriesTg::oplus(const polyTg & p, const seriesTg & s)
  {
	  return seriesTg(p).oplus(s);
  }

  seriesTg seriesTg::otimes(const Tg & m, const seriesTg & s)
  {
	  if (s.isEpsilon()) return seriesTg();  // retourne eps
	  if (s.isTop()) return seriesTg::Top();  // retourne T

	  if (s.isPolynomial()) 	return seriesTg(polyTg::otimes(m, s._q));
	  seriesTg cT(s);
	  cT.toRight();
	  return seriesTg(polyTg::otimes(m, cT.getP()), polyTg::otimes(m, cT.getQ()), cT.getR(), true);
  }

  seriesTg seriesTg::otimes(const Tg & m) const
  {
	  if (this->isEpsilon()) return seriesTg();  // retourne eps
	  if (this->isTop()) return seriesTg::Top();  // retourne T
	  if (isPolynomial()) 	return seriesTg(_q*polyTg(m));

	  seriesTg cT(*this);
	  cT.toLeft();
	  return seriesTg(cT.getP()*m, cT.getQ()*m, cT.getR(), false);
  }

  seriesTg seriesTg::operator*(const polyTg & p) const
  {
	  return otimes(p);
  }

  seriesTg seriesTg::otimes(const polyTg & p, const seriesTg & s)
  {
	  if (s.isEpsilon()) return seriesTg();  // retourne eps
	  if (p.isEpsilon()) return seriesTg();  // retourne eps
	  if (s.isTop() || p.isTop()) return seriesTg::Top(); // retourne T

	  if (s.isPolynomial()) 	return seriesTg(p*s._q);
	  seriesTg cT(s);
	  cT.toRight();
	  return seriesTg(p*cT.getP(), p*cT.getQ(), cT.getR(), true);
  }
  
  seriesTg seriesTg::otimes(const polyTg & p) const
  {
	  if (this->isEpsilon() || p.isEpsilon()) return seriesTg();  // retourne eps
	  if (this->isTop() || p.isTop()) return seriesTg::Top(); // retourne T

	  if (isPolynomial()) 	return seriesTg(_q*polyTg(p));
	  seriesTg cT(*this);
	  cT.toLeft();
	  return seriesTg(cT.getP()*p, cT.getQ()*p, cT.getR(), false);
  }
    
  // returns the specific N matrix described by Johannes Trunk 
  etvo::matrix<series>  seriesTg::getMatN(unsigned size)
  {
	  etvo::matrix<series>  Em(size, size);
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
     
  // getCore : returns the Core form of a given seriesTg
  etvo::matrix<series>  seriesTg::getCore(unsigned ratio) const
  {
	  if (ratio < 1) ratio = 1;
	  seriesTg cT(*this);
	  cT.toRight();	 	 
	  unsigned long m = cT.getLcmGain()* ratio;
	  	
	#ifdef TRACE
	  cout << "m=" << m << endl;
	#endif
	  if (cT.isPolynomial())
	  {
		  polyTg pol = cT.getP() + cT.getQ();
		  matrix<poly> Core = pol.getCore(ratio);
		  matrix<series> result(Core.GetRow(), Core.GetColumn());
		  for (unsigned i = 0; i < result.GetRow(); i++)
		  {
			  for (unsigned j = 0; j < result.GetColumn(); j++)
			  {
				  result(i, j) = series(Core(i, j));
			  }
		  }
		  return result;
	  }
	  polyTg p = cT.getP();
	  polyTg q = cT.getQ();
	  gd r = cT.getR();
	  // Core decomposition
	  //M_m Q B_b
	  //with Mm=[Dm|1, d-1Dm|1,  ..., d1-m Dm|1]
	  //with Bb=[D1|m d1-m, ... ,D1|m d-1, D1|m]'
	  //and Q in MinMax[[g,d]]
	  //Mu_m and Beta_b are implicit from the size of Core
	  etvo::matrix<series>  Core(m, m);

	  int mul = Tools::lcm(r.getd(), m);
	  int rat = mul / r.getd();
	#ifdef TRACE
	  cout << "rat=" << rat << endl;
	#endif

	  if (rat != 1)
	  {
		  polyTg pR;
		  for (int i = 0; i < rat; i++)
		  {
			  pR = pR + Tg(T_op::delta(i*r.getd()), i*r.getg());
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

	  dDd::setCanonForm(1);  // central form for dDd terms
	  Fper::setAutoReduction(false);  // extension is now possible
	  for (unsigned i = 0; i < p.size(); i++)
	  {
		  // all terms of p are decomposed on terms g^nl mu_M g^nc betâ_B g^nr
		  Tg mo = p[i];
		  T_op w;
		  pair<unsigned, unsigned> per = mo.getT_op().getPeriodicity();		 
		  if (per.first != m)
		  {
			  unsigned rati = m / per.first;
			  w = mo.getT_op().extendBy(rati); //locally extends
		  }
		  else w = mo.getT_op();
		  
		  vector<dDd> v = w.getTerms();
		  int gamma = mo.getG();
		  for (dDd term : v)  // all dDd terms in central form
		  {
			  unsigned  li = -term.getTl();
			  unsigned  co = m - 1 + term.getTr();
			  gd monom(gamma, term.getTc());
			  series s(monom);
			  Core(li, co) = s + Core(li, co);
		  }		 
	  }	  

	  for (unsigned i = 0; i < q.size(); i++)
	  {
		  Tg mo = q[i];
		  T_op w;
		  pair<unsigned, unsigned> per = mo.getT_op().getPeriodicity();
		  if (per.first != m)
		  {
			  unsigned rati = m / per.first;
			  w = mo.getT_op().extendBy(rati); //locally extends
		  }
		  else w = mo.getT_op();

		  vector<dDd> v = w.getTerms();
		  int gamma = mo.getG();
		  for (dDd term : v)  // all gNg terms in central form
		  {
			  unsigned  li = -term.getTl();
			  unsigned  co = m - 1 + term.getTr();
			  gd monom(gamma, term.getTc());
			  gd rModif(r.getg(), r.getd()/m);			 
			  series s(poly(), poly(monom), rModif);
			  Core(li, co) = s + Core(li, co);			 
		  }
	  }	  
	  Fper::setAutoReduction(true);
	  dDd::setCanonForm(0);  //left form
	  return Core;
  }

  // returns the star (via a Core Decomposition) of the current 
  // series
  seriesTg seriesTg::starCD() const
  {
	  if (isEpsilon()) return seriesTg::E();
	 
	  matrix<series> Q = getCore(1);
	  matrix<series> N = seriesTg::getMatN(Q.GetRow());
	  matrix<series> Qk = Q * N;
	  //cout << "size core = " << Qk.GetRow() << "x" << Qk.GetColumn() << endl;
	  Qk = Qk.star();
	  seriesTg resultat = seriesTg::coreToSeriesTg(Qk);
	  return resultat;
  }

  seriesTg seriesTg::star() const
  {
	  if (isEpsilon()) return seriesTg::E();
	  if (isTop()) return seriesTg::Top();

	  return starCD();
  }

  etvo::matrix<series>  seriesTg::getCoreMax(unsigned ratio) const
  {
	  etvo::matrix<series>  Core = getCore(ratio);
	  etvo::matrix<series>  Em = getMatN(Core.GetRow());
	  etvo::matrix<series>  Eb = getMatN(Core.GetColumn());
	  return Em * Core*Eb;
  }
    
  seriesTg seriesTg::coreEntryToSeriesTg(int i, int j, int mb, const series & s)
  {
	  //returns d-i.Dmb|1. s .D1|mb.d(j+1-m);
	  poly p = s.getP();
	  poly q = s.getQ();
	  gd r = s.getR();

	  unsigned form = dDd::getCanonForm();
	  dDd::setCanonForm(1);
	  //cout << "coreEntryToSeriesTg" << endl;
	  //cout << "i=" << i << " j=" << j << " mb=" << mb << " s=" << s.ToString() << endl;
	  
	 polyTg ptg, qtg;
	 gd rtg(r.getg(), r.getd() * mb);

	 if (!p.isEpsilon())
	 {
		 for (unsigned k = 0; k < p.getn(); k++)
		 {
			 Tg mo(dDd(-i, mb, p.getpol(k).getd(), j + 1 - mb), p.getpol(k).getg());
			 ptg = ptg + mo;
		 }
	 }
	 if (!q.isEpsilon())
	 {
		 for (unsigned k = 0; k < q.getn(); k++)
		 {
			 Tg mo(dDd(-i, mb, q.getpol(k).getd(), j + 1 - mb), q.getpol(k).getg());
			 qtg = qtg + mo;
		 }
	 }
	 dDd::setCanonForm(form);
	// cout << ptg << qtg << rtg << endl;
	 return seriesTg(ptg, qtg, rtg);
  }

  // static function Mu_m Q Beta_b -> seriesEd
  seriesTg seriesTg::coreToSeriesTg(const matrix<series> & core)
  { 
	  //cout << "Core -> series " << endl;
	  matrix<series> Q(core); //copy of Core
	  if (Q.GetColumn() != Q.GetRow())
	  {
		  throw etvoException(1020, "coreToSeriesTg : core must be a square matrix!");
	  }
	  int mb = (int)Q.GetRow();	  
	  seriesTg result;	 

	  for (unsigned int i = 0; i < mb; i++)
	  {
		  for (int j = 0; j < mb; j++)
		  {
			  if (Q(i, j).isDegenerate())
			  {
				  cout << Q(i, j) << endl;
				  throw etvoException(105, "A term of the Core matrix is degenerate. This computation is not handled yet.");
			  }
			  if (!Q(i, j).isEpsilon())
			  {
				  
				  seriesTg tmp = coreEntryToSeriesTg(i, j, mb, Q(i, j));
				  result = result + tmp;				  
			  }			  
		  }
	  }
	  return result;
  }

  seriesTg seriesTg::oplusCD(const seriesTg & s) const
  {
	  if (isTop() || s.isTop()) return Top();
	  if (isEpsilon()) return s;
	  if (s.isEpsilon()) return *this;	  
	  unsigned int mb1, mb2;	  
	  mb1 = getLcmGain();
	  mb2 = s.getLcmGain();
	  long M = Tools::lcm(mb1,mb2);	  
	  matrix<series> Q1 = getCore(M/mb1);  
	  matrix<series> Q2 = s.getCore(M/mb2);
	  matrix<series> Q = Q1 + Q2;
	  seriesTg res = seriesTg::coreToSeriesTg(Q);
	  return res;
  }

  seriesTg seriesTg::otimesCD(const seriesTg & s) const
  {
	  if (this->isEpsilon()) return seriesTg();  // returns eps
	  if (s.isEpsilon()) return seriesTg();  // returns eps
	  if (this->isTop()) return seriesTg::Top();  // retourne T
	  if (s.isTop()) return seriesTg::Top();  // returns T
	  seriesTg cT(*this);
	  seriesTg cS(s);
	  unsigned int mb1,mb2;
	  mb1=cT.getLcmGain();
	  mb2=cS.getLcmGain();
	  long mul = Tools::lcm(mb1,mb2);
	  matrix<series> Q1 = cT.getCore(mul / mb1);
	  matrix<series> Q2 = cS.getCore(mul / mb2);
	  matrix<series> N = seriesTg::getMatN(Q2.GetRow());
	  matrix<series> prod = Q1 * N*Q2;	  
	  seriesTg resultat = seriesTg::coreToSeriesTg(prod);
	  return resultat;
  }

  seriesTg seriesTg::infCD(const seriesTg & s) const
  {
	  if (isEpsilon() || s.isEpsilon()) return seriesTg::Epsilon();
	  if (isTop()) return s;
	  if (s.isTop()) return *this;
	  unsigned int mb1, mb2;
	  mb1=getLcmGain();
	  mb2=s.getLcmGain();	  
	  long M = Tools::lcm(mb1, mb2);
	  matrix<series> Q1 = getCoreMax(M / mb1);
	  matrix<series> Q2 = s.getCoreMax(M / mb2);
	  matrix<series> Q = Q1.inf(Q2);
	  seriesTg res = seriesTg::coreToSeriesTg(Q);
	  return res;
  }

  seriesTg seriesTg::inf(const seriesTg & s) const
  {
	  return infCD(s);
  }

  seriesTg seriesTg::lfracCD(const seriesTg & s) const
  {	  
	  if (isTop() || s.isEpsilon()) return seriesTg::Top();
	  //else
	  if (isEpsilon() || s.isTop()) return seriesTg::Epsilon();

	  unsigned int mb1, mb2;
	  mb1=getLcmGain();
	  mb2=s.getLcmGain();
	  unsigned int mul = Tools::lcm(mb1, mb2);	  
	  matrix<series> Q1 = getCoreMax(mul / mb1);
	  matrix<series> Q2 = s.getCoreMax(mul / mb2);
	  //cout << "Q1=" << Q1 << endl;
	  //cout << "Q2=" << Q2 << endl;

	  matrix<series> prod = Q1.lfrac(Q2);
	  //cout << "prod=" << prod << endl;
	  return seriesTg::coreToSeriesTg(prod);

  }

  seriesTg seriesTg::rfracCD(const seriesTg & s) const
  {
	  if (isTop() || s.isEpsilon()) return seriesTg::Top();
	  //else
	  if (isEpsilon() || s.isTop()) return seriesTg::Epsilon();

	  unsigned int mb1, mb2;
	  mb1 = getLcmGain();
	  mb2 = s.getLcmGain();
	  unsigned int mul = Tools::lcm(mb1, mb2);
	  matrix<series> Q1 = getCoreMax(mul / mb1);
	  matrix<series> Q2 = s.getCoreMax(mul / mb2);
	  matrix<series> prod = Q1.rfrac(Q2);	 
	  return seriesTg::coreToSeriesTg(prod);
  }

  seriesTg seriesTg::lfrac(const seriesTg & s) const
  {
	  return lfracCD(s);
  }

  seriesTg seriesTg::rfrac(const seriesTg & s) const
  {
	  return rfracCD(s);
  }

  polyTg seriesTg::getPolyUpTo(int gammaN) const
  {
	  seriesTg copy(*this);
	  copy.toRight();
	  return seriesTg::getPolyUpTo(gammaN, copy.getP(), copy.getQ(), copy.getR());
  }

  /* New version in May 2019 (See JT Thesis)*/
  seriesTg seriesTg::toCausal(const seriesTg & s)
  {
	  if (s.isEpsilon()) return seriesTg::Epsilon();	  
	  matrix<series> Qhat = s.getCoreMax(1);
	  for (unsigned m = 0; m < Qhat.GetColumn(); m++) {
		  for (unsigned n = 0; n < Qhat.GetRow(); n++) {
			  Qhat(n, m) = Qhat(n, m).prcaus();
		  }
	  }
	  return seriesTg::coreToSeriesTg(Qhat);
  }


  /* Deprecated Replaced by a projection in the Core form
  seriesTg seriesTg::toCausal(const seriesTg & s)
  {
	  if (s.isEpsilon()) return seriesTg::Epsilon();
	  seriesTg copy(s);
	  copy.toRight();
	  if (copy.isPolynomial())
	  {
		  return seriesTg(polyTg::toCausal(copy.getQ()));
	  }
	  while (copy._q[0].getG() < 0 || !(copy._q[0].getT_op()>=T_op::delta(0)))
	  {
		  Tg ajout(copy._q[0] * Tg(T_op::delta(copy._deltaR), copy._gamma));
		  copy._p.add(copy._q[0]);  //_p = _p + _q[0];
		  copy._q.removeTerm(0);
		  copy._q.add(ajout); // _q = _q + ajout;           
	  }
	  copy._p = polyTg::toCausal(copy._p);
	  copy.canon();
	  return copy;
  }
  */

  // seriesTg->serie
  series seriesTg::toSeries() const
  {
	  seriesTg copy(*this);
	  copy.toLeft();
	  poly p, q;
	  for (unsigned int i = 0; i < copy._p.size(); i++)
	  {
		  p = p + gd(copy._p[i].getG(),copy._p[i].getT_op().Rw(0));
	  }
	  for (unsigned int i = 0; i<copy._q.size(); i++)
	  {
		  q = q + gd(copy._q[i].getG(),copy._q[i].getT_op().Rw(0));
	  }
	  return series(p, q, copy.getR());
  }
  //Responses to I, d^1I, d^2I ...
  vector<series> seriesTg::toImpulseResponse() const
  {
	  // the number of series is the gain of *this
	  seriesTg copy(*this);
	  long gain = copy.getMaxGain();
	  vector<series> decomp;
	  for (long i = 0; i < gain; i++)
	  {
		  decomp.push_back(copy.toSeries());
		  copy = copy * seriesTg(Tg::d(1));
	  }
	  return decomp;
  }

  bool seriesTg::operator<=(const seriesTg & s) const
  {
	  if (isEpsilon() || s.isTop()) return true;
	  if (s.isEpsilon()) return false;
	  if (isTop()) return false;

	  seriesTg copyT(*this), copyS(s);
	  copyT.toLeft();
	  copyS.toLeft();
	  double slopeS = ((double)copyS._deltaL) / copyS._gamma;
	  double slopeT = ((double)copyT._deltaL) / copyT._gamma;

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
				  polyTg transS = copyS.getPolyUpTo(copyS._q[0].getG() + copyS._gamma);
				  return copyT._q <= transS;
			  }
			  else   // this and S are not polynomial (two series with possibly different slopes)
			  {
				  int gMax;
				  gMax = std::max(copyT._q[0].getG() + copyT._gamma, copyS._q[0].getG() + copyS._gamma);
				  // S must be developped at least more than *this
				  int nDeltaG = ((gMax - copyS._q[0].getG()) / copyS._gamma) + 1;				 
				  int gS = copyS._q[0].getG() + nDeltaG * copyS._gamma;
				  polyTg transT = copyT.getPolyUpTo(gMax); //*this developped up to gMax
				  polyTg transS = copyS.getPolyUpTo(gS);   // S developped up to gS
				  return (transT <= transS);
			  }
		  }
	  }
  }
      
  bool seriesTg::operator>=(const seriesTg & s) const
  {
    return s<=(*this);
  }
  

  /*
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
  */
}//end namespace etvo
