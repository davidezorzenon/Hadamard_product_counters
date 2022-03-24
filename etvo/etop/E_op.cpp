#include "E_op.h"
#include "../common/EtvoTools.h"
#include<sstream>
#include<algorithm>
#include<iostream>

#include "../Fper/Fmaxp.h"
#include "../common/etvoException.h"
using namespace std;

namespace etvo
{

  //static functions

  E_op E_op::E()
  {
    E_op e;
    e.setFromFw(Fminp::E());
    return e;
  }

  E_op E_op::Mu(unsigned m)
  {
    return gNg(0, m, 1, 0);
  }

  E_op E_op::MuVar(const std::vector<unsigned> & weights)
  {
    unsigned nu = 0;
    unsigned m = 0;
    for (unsigned v : weights) nu += v;
    unsigned n = (unsigned)weights.size();
    if (n < 1 || nu < 1)
    {
      throw etvoException(12, "Weights must be at least 1");
    }
    E_op wvar=gNg((int)m,nu,n,(int)n-1);
    for (int i = 1; i < (int)n; i++)
    {
      m += weights[i - 1];
      wvar=wvar+ gNg(m, nu, n, n - 1-i);
    }
    return wvar;
  }
  

  E_op E_op::Beta(unsigned b)
  {
    return gNg(0, 1, b, 0);
  }

  E_op E_op::BetaVar(const std::vector<unsigned> & weights)
  {
    E_op ws = MuVar(weights);
    Fper f=ws.getFw();
    Fmaxp fmax(f);    
    Fper  fequiv = Fmaxp::E().lfrac(fmax);
    E_op res;
    res.setFromFw(fequiv);
    return res;
    
  }

  E_op E_op::Nabla(unsigned m,unsigned b)
  {
    return gNg(0, m, b, 0);
  }

  E_op E_op::Nabla(unsigned mb)
  {
    return gNg(0, mb, mb, 0);
  }

  E_op E_op::Gamma(int g)
  {
    return gNg(g);
  }

  ///E 
  E_op::E_op()
  {
    _fper = Fminp::E();    
  }


  E_op::E_op(const gNg & term)
  {
    _fper = term.getFw();
  }


  unsigned E_op::getM() const
  {
    return (unsigned)_fper.getCodomPer();
  }

  unsigned E_op::getB() const
  {
    return (unsigned)_fper.getDomPer();
  }

  std::vector<gNg> E_op::getTerms() const
  {
    unsigned _m = getM();
    unsigned _b = getB();
    vector<gNg> terms;
    for (int ki = 0; ki < (int)getB(); ki++)
    {
      if (_fper(ki) < _fper(ki + 1))
      {
        terms.push_back(gNg(_fper(ki), _m, 0, _b, _b - 1 - ki));
      }

    }
    return terms;
  }


  void E_op::add(const E_op & op)
  {
     _fper = _fper.min(op._fper);    
  }

  void E_op::add(const gNg & term)
  {
     _fper = _fper.min(term.getFw());
  }


  E_op E_op::extendBy(unsigned mul) const
  {
    bool autoR = Fper::getAutoReductionState();
    Fper f = _fper.extendBy(mul);
    E_op result;
    result.setFromFw(f);
    Fper::setAutoReduction(autoR);
    return result;
  }

  void E_op::reduce()
  {
    _fper.reduce();   
  }

  Fminp E_op::getFw() const
  {
    return _fper;
  }

  void E_op::setFromFw(const Fminp & f)
  {
    _fper = f;
  
  }

  int E_op::Fw(int ki) const
  {
    return _fper.getValue(ki);
  }

  std::pair<unsigned, unsigned> E_op::getPeriodicity() const
  {
    return _fper.getPeriodicity();
  }

  

  std::string E_op::toString() const
  {
    string s;
    std::vector<gNg> terms = this->getTerms();
    for (unsigned i = 0; i < terms.size(); i++)
    {
      s += terms[i].toString();
      if (i != terms.size() - 1) s += "+";
    }
    return s;
  }
  
  std::string E_op::toStringAsMuVar() const
  {
    std::stringstream ss;
    Fminp fw = this->getFw();    
    int gn = fw(0);
    std::vector<unsigned> weights(fw.getDomPer());
    for (int i = 1; i < fw.getDomPer() + 1; i++)
    {
      weights[i-1] = fw(i) - fw(i - 1);
    }

    string s;
    ss << "g" << gn << ".";
    ss << "m<" << weights[0];
    for (int i = 1; i < weights.size(); i++)
    {
      ss << "," << weights[i];
    }
    ss << ">";
    return ss.str();
  }

  bool E_op::operator==(const E_op & w) const
  {
    return _fper == w._fper;
  }

  bool E_op::operator!=(const E_op & w) const
  {
    return _fper != w._fper;
  }


  bool E_op::operator<=(const E_op & w) const
  {
    return _fper <= w._fper;
  }

  //Correction 8/10/18 -> uses <=
  bool E_op::operator>=(const E_op & w) const
  {
    return w <= (*this);
  }

  //Added  8/10/18
  bool E_op::operator<(const E_op & w)const
  {
    return _fper < w._fper;
  }

  //Correction 8/10/18 -> uses <
  bool E_op::operator>(const E_op & w)const
  {
    return w < (*this);
  }
  

  E_op E_op::operator+(const E_op & w) const
  {
    E_op resultat;
    resultat.setFromFw(_fper + w._fper);
    return resultat;
  }

  E_op E_op::oplus(const E_op & w) const
  {
    return (*this)+w;
  }

  E_op E_op::inf(const E_op & w) const
  {
    E_op resultat;
    resultat.setFromFw(_fper.inf(w._fper));
    return resultat;
  }

  E_op E_op::operator*(const E_op & w) const
  {
    E_op resultat;
    resultat.setFromFw(_fper*w._fper);
    return resultat;
  }
  E_op E_op::otimes(const E_op & w) const
  {
    return (*this)*w;
  }

  E_op E_op::lfrac(const E_op & w) const
  {
    E_op resultat;
    resultat.setFromFw(_fper.lfrac(w._fper));
    return resultat;
  }

  E_op E_op::rfrac(const E_op & w) const
  {
    E_op resultat;
    resultat.setFromFw(_fper.rfrac(w._fper));
    return resultat;
  }

  std::ostream & operator<<(std::ostream & f, const E_op & op)
  {
    f << op.toString();
    return f;
  }
}
