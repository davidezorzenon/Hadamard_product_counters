#ifndef TOP_H
#define TOP_H
#include<utility>
#include "dDd.h"
#include "../Fper/Fmaxp.h"

namespace etvo
{
	/*!
	* \class etvo::T_op
	* \brief Class to describe T-operators which are coefficients of terms in T[[g]]
	*
	* \author BC LH JT LARIS
	* \version 2.0
	*/

class T_op
{
   public:
    /// neutral T_op
    static T_op E();
    /// Delta_mb
    static T_op Delta(unsigned mb);
    /// delta^t
    static T_op delta(int t);
    /// delta^<t1,t2..>
    static T_op deltaVar(const std::vector<int> & delays);

    public:

		/// neutral T_op
        T_op();
		/// T_op initialized with a dDd object
        T_op(const dDd & term);
		
        void add(const dDd & term);
        void add(const T_op & op);

		/// returns periodicity
        std::pair<unsigned,unsigned> getPeriodicity() const; 
    
		/// returns the collection of dDd terms
        std::vector<dDd> getTerms() const;

		/// returns periodicity
        unsigned getMB() const;      

		
        T_op extendBy(unsigned mul) const;
        void reduce();

		/// returns a string description
        std::string toString() const;

		/// returns a string description as d<seq> coefficients
        std::string toStringAsDeltaVar() const;

		/// Release time evaluation
        int Rw(int ki) const;
		/// Returns the release-time function
        Fmaxp getRw() const;
		/// Sets from a release-time function
        void setFromRw(const Fmaxp &);

		/// Returns the sum (max) of T_ops
        T_op operator+(const T_op & f) const;
		/// Returns the sum (max) of T_ops
        T_op oplus(const T_op & f) const;
		/// Returns the min of T_ops
        T_op inf(const T_op & f) const;
		/// Returns the composition of T_ops
        T_op operator*(const T_op & f) const;
		/// Returns the composition of T_ops
        T_op otimes(const T_op & f) const;

		/// Returns the residuation of left composition of T_ops
        T_op lfrac(const T_op & f) const;
		/// Returns the residuation of right composition of T_ops
        T_op rfrac(const T_op & f) const;

		/// checks equality
        bool operator==(const T_op & w) const;
		/// checks inequality
        bool operator!=(const T_op & w) const;
				
        bool operator<=(const T_op & w) const;
        bool operator>=(const T_op & w) const;
        bool operator>(const T_op & w) const;
        bool operator<(const T_op & w) const;

    protected:
        Fmaxp _fper;

};
   std::ostream & operator<<(std::ostream & f, const T_op & m);
}
#endif // TOP_H
