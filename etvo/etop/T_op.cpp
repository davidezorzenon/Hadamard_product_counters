#include "T_op.h"
#include "../common/EtvoTools.h"
#include <string>
#include "../common/etvoException.h"
#include<sstream>

using namespace std;

namespace etvo
{
  //static functions
  T_op T_op::E()
  {
    T_op e;
    e.setFromRw(Fmaxp::E());
    return e;
  }

  T_op T_op::Delta(unsigned MBe)
  {
    return dDd(0, MBe, 0);
  }

  T_op T_op::delta(int t)
  {
    return dDd(t);
  }

  T_op T_op::deltaVar(const std::vector<int> & delays)
  {    
    for (int i = 0; i < delays.size() - 1; i++)
    {
      if (delays[i + 1] < (delays[i] - 1))
      {
        throw etvoException(12, "Delays are not correct");
      }
    }

    if (delays[0]<(delays[delays.size()-1] - 1))
    {
      throw etvoException(12, "Delays are not correct");
    }

    std::vector<int> Rw(delays.size());
    for (int i = 0; i < delays.size() ; i++)
    {
      Rw[i] = delays[i] + i;
    }
    int s = (int)delays.size();
    Fmaxp F(s,s,Rw);
    T_op t;
    t.setFromRw(F);
    return t;    
  }

  /// Neutral T_op
  T_op::T_op()
  {
    _fper = Fmaxp::E();
  }


  T_op::T_op(const dDd & term)
  {
    _fper = term.getRw();

  }


  unsigned T_op::getMB() const
  {
    return (unsigned)_fper.getCodomPer();
  }


  std::vector<dDd> T_op::getTerms() const
  {
    int mb = (int)getMB();
    vector<dDd> terms;

    for (int ti = 0; ti < mb; ti++)
    {
      if (_fper(ti) > _fper(ti - 1))
      {
        terms.push_back(dDd(_fper(ti), mb, -mb + 1 - ti));
      }
    }
    return terms;
  }


  void T_op::add(const T_op & op)
  {
    _fper = _fper.max(op._fper);    
  }

  void T_op::add(const dDd & term)
  {
     _fper = _fper.max(term.getRw());
  }

  
  T_op T_op::extendBy(unsigned mul) const
  {
      bool autoR = Fper::getAutoReductionState();
      Fper::setAutoReduction(false);
      Fper f=_fper.extendBy(mul);
      T_op result;
      result.setFromRw(f);
      Fper::setAutoReduction(autoR);
      return result;
  }

  void T_op::reduce()
  {
    _fper.reduce();

  }

  Fmaxp T_op::getRw() const
  {
    return _fper;
  }

  void T_op::setFromRw(const Fmaxp & f)
  {
    _fper = f;

  }

  int T_op::Rw(int ki) const
  {
    return _fper.getValue(ki);    
  }

  std::pair<unsigned, unsigned> T_op::getPeriodicity() const
  {
    return _fper.getPeriodicity();
  }

 
  bool T_op::operator==(const T_op & w) const
  {
    return _fper == w._fper;
  }

  bool T_op::operator!=(const T_op & w) const
  {
    return _fper != w._fper;
  }

  bool T_op::operator<=(const T_op & w) const
  {
    return _fper <= w._fper;
  }

  // Added 8/10/18 
  bool T_op::operator<(const T_op & w)const
  {
    return _fper < w._fper;
  }

  // Modification 8/10/18 -> uses <=
  bool T_op::operator>=(const T_op & w) const
  {
    return w<=(*this);
  }

  // Modification 8/10/18 -> uses <
  bool T_op::operator>(const T_op & w) const
  {
    return w < (*this);
  }
   
  T_op T_op::operator+(const T_op & w) const
  {
    T_op resultat;
    resultat.setFromRw(_fper + w._fper);
    return resultat;
  }

  T_op T_op::oplus(const T_op & w) const
  {
    return (*this) + w;
  }

  T_op T_op::inf(const T_op & w) const
  {
    T_op resultat;
    resultat.setFromRw(_fper.inf(w._fper));
    return resultat;
  }

  T_op T_op::operator*(const T_op & w) const
  {
    T_op resultat;
    resultat.setFromRw(_fper*w._fper);
    return resultat;
  }
  T_op T_op::otimes(const T_op & w) const
  {
    return (*this)*w;
  }

  T_op T_op::lfrac(const T_op & w) const
  {
    T_op resultat;
    resultat.setFromRw(_fper.lfrac(w._fper));
    return resultat;
  }

  T_op T_op::rfrac(const T_op & w) const
  {
    T_op resultat;
    resultat.setFromRw(_fper.rfrac(w._fper));
    return resultat;
  }


  std::string T_op::toString() const
  {
    string s;
    std::vector<dDd> terms = this->getTerms();
    for (unsigned i = 0; i < terms.size(); i++)
    {
      s += terms[i].toString();
      if (i != terms.size() - 1) s += "+";
    }
    return s;
  }

  
  std::string T_op::toStringAsDeltaVar() const
  {
    std::stringstream ss;
    Fmaxp rw = this->getRw();
    std::vector<int> d_shift(rw.getDomPer());
    for (int i = 0; i < rw.getDomPer(); i++)
    {
      d_shift[i] = rw(i) - i;
    }   
    ss << "d<" << d_shift[0];
    for (int i = 1; i < d_shift.size(); i++)
    {
      ss << "," << d_shift[i];
    }
    ss << ">";
    return ss.str();
  }

  std::ostream & operator<<(std::ostream & f, const T_op & op)
  {
    f << op.toString();
    return f;
  }
}
