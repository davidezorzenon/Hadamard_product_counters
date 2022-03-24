#ifndef EOP_H
#define EOP_H
#include<vector>
#include<utility>
#include "gNg.h"
#include "../Fper/Fminp.h"


namespace etvo
{
  /*!
  * \class etvo::E_op
  * \brief Class to describe E-operators which are coefficients of terms in E[[d]].
  *  One E_op element is defined by a Counter-to-counter (Fminp) function.
  *
  * \author BC LH JT LARIS
  * \version 2.0
  */


class E_op
{
public:
    /// neutral E_op
    static E_op E();
    /// E_op::Mu(c) is the \mu_c operator
    static E_op Mu(unsigned m);
    /// E_op::Beta(c) is the \beta_c operator
    static E_op Beta(unsigned b);
    /// E_op::Nabla(m,b) is the \mu_m.\beta_b composed operator
    static E_op Nabla(unsigned m,unsigned b);
    /// E_op::Nabla(mb) is the \mu_mb.\beta_mb composed operator
    static E_op Nabla(unsigned mb);

    /// E_op::MuVar({1,2}) is an E-operator \mu<seq> defined by a sequence of weights
    static E_op MuVar(const std::vector<unsigned> & weights);
    /// E_op::BetaVar({1,2}) is an E-operator \beta<seq> defined by a sequence of weights
    static E_op BetaVar(const std::vector<unsigned> & weights);
	/// E_op::Gamma(n) is the \gamma_n E-operator 
    static E_op Gamma(int n);

    public:
		/// default initialization is the neutral E-operator
        E_op();
		/// Initialization with a gNg term (\gamma_nl.\mu_m.\beta_b.gamma_nr)
        E_op(const gNg & term);

		/// Add a gNg term to the current E-operator
        void add(const gNg & term);
		/// Add an E-operator to the current E-operator
        void add(const E_op & op);

		/// Returns the periodicity of the Fw Counter-to-Counter function (B,M)
        std::pair<unsigned,unsigned> getPeriodicity() const; 
     
		/// Returns the set of gNg terms for the current E-operator
        std::vector<gNg> getTerms() const;

		/// Returns the M value in the (B,M) periodicity
        unsigned getM() const;
		/// Returns the B value in the (B,M) periodicity
        unsigned getB() const;
		/// Extend the E-operator in a non canonical form 
        E_op extendBy(unsigned mul) const;

		/// Reduce to the canonical form
        void reduce();

		/// Returns a string which describes the E-operator
        std::string toString() const;
		/// Returns a string which describes the E-operator with a \mu<seq> description
        std::string toStringAsMuVar() const;

		/// Gives the evaluation of the underlying Fw (Counter-to-counter function) 
        int Fw(int ki) const;
		/// Returns the Fminp Counter-to-counter function
        Fminp getFw() const;
		/// Defines the current E-operator from a counter-to-counter function
        void setFromFw(const Fminp &);

		/// Sum of E_op elements
        E_op operator+(const E_op & f) const;
		/// Sum of E_op elements
        E_op oplus(const E_op & f) const;

        E_op inf(const E_op & f) const;
        E_op operator*(const E_op & f) const;
        E_op otimes(const E_op & f) const;
        E_op lfrac(const E_op & f) const;
        E_op rfrac(const E_op & f) const;

        bool operator==(const E_op & w) const;
        bool operator!=(const E_op & w) const;
        bool operator<=(const E_op & w) const;
        bool operator>=(const E_op & w) const;
        bool operator>(const E_op & w) const;
        bool operator<(const E_op & w) const;

    protected:
        Fminp _fper;      
};
   std::ostream & operator<<(std::ostream & f, const E_op & m);
}
#endif // EOP_H
