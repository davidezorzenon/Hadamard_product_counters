#ifndef POLYIII_H
#define POLYIII_H

/*  MODEIF Jan 2019
#include "..\minmaxgd\poly.h"
*/
#include "../libminmaxgd/include/poly.h"
#include "gdWrapper.h"
#include<vector>
#include "../common/ISterm.h"

/*!
* \file  polyWrapper.h
*
* /

/*! \namespace etvo
* namespace for ETVO classes
*/
namespace etvo
{
class series;
/*!
* \class etvo::poly
* \brief Wrapper class to mmgd::poly from from MinMaxGD library
*
* Class for a finite sum of monomials  g^n0.d^t0+...+g^nK.d^tK with finite exponents [ni,ti finite]
*
* An epsilon and top polonomial exist
*
* \author BC LH JT LARIS
* \version 2.0
*/
class poly:public mmgd::poly, public etvo::ISterm
{
    public:
        /// gives the epsilon polynomial
        static poly Epsilon();
        /// gives the neutral polynomial e=g^0.d^0
        static poly E();
        /// gives the top polynomial T
        static poly Top();

        /// check if it is equal to epsilon
        bool isEpsilon() const;
        /// check if it is equal to e
        bool isE() const;
        /// check if it is degenrate (at least one degenrate monomial)
        bool isDegenerate() const;

        /// default constructor = epsilon polynomial
        poly();
        /// constructor Top or E polynomial : if TopNotE=true -> Top else -> g^0.d^0
        poly(bool TopNotE);

        /// constructor : a polynomial with only one monomial p=g^n.d^t
	      poly(const gd& m);
        /// constructor : a polynomial set from a mmgd::poly object
        poly(const mmgd::poly & p);
        /// constructor : a polynomial with only one monomial p=g^n.d^t
        poly(long n,long t);
        /// constructor: set a polynomial initialized from a collection of monomials. The polynomial
        /// p=Sum_i g^nid^ti is set in a standard form where ni<ni+1 ti<ti+1
        poly(const std::vector<mmgd::gd> & v);
        /// constructor: a polynomial initialized from a collection of monomials. The polynomial
        /// p=Sum_i g^nid^ti is set in a standard form where ni<ni+1 ti<ti+1
        poly(const std::vector<gd> & v);
        ~poly();

        /// adds a new monomial to the current polynomial, but simplification does not operate.
        /// Then, the current polynomial is no longer in standard form.
        void add(const gd & m);

        /// returns the number of monomials
        unsigned size() const;

        /// returns a copy of one of the monomials (modification is not allowed)
        gd operator[](unsigned i) const;

        /// operator = assignment
        poly & operator=(const poly & p);
        /// operator = assignment
        poly & operator=(const gd & m);

        /// operator== checks equality
        bool operator==(const poly & p) const;
        bool operator!=(const poly & p) const;
        /// operator<= order according to the MinMax[[g,d]] rule
        bool operator<=(const poly & p) const;
        /// operator<= order according to the MinMax[[g,d]] rule
        bool operator>=(const poly & p) const;

        /// operator+ sum of polynomials p1+p2 is a polynomial
        poly operator+(const poly & p) const;
        /// operator+ sum of a polynomial with a monomial p+m is a polynomial
        poly operator+(const gd & m) const;
        /// operator* product of polynomials p1*p2 is a polynomial
        poly operator*(const poly & p) const;
        /// operator* product of a polynomial and a monomial p*m is a polynomial
        poly operator*(const gd & m) const;

        /// infimum of two polynomials p1.inf(p2)=greatest p s.t. p<=p1 and p<=p2
        poly inf(const poly & p) const;
        /// infimum p1.inf(m)=greatest p s.t. p<=p1 and p<=m
        poly inf(const gd & m) const;

        /// product residuation p1.lfrac(p2) = greatest x s.t. p2.x<=p1
        /// since the product is commutative, lfrac equiv. rfrac equiv frac
        poly lfrac(const poly & p) const;
        /// product residuation p1.rfrac(p2) = greatest x s.t. x.p2<=p1
        /// since the product is commutative, lfrac equiv. rfrac equiv frac
        poly rfrac(const poly & p) const;
        /// product residuation p1.frac(p2) = greatest x s.t. p2.x<=p1
        poly frac(const poly & p) const;
        /// product residuation p.frac(m) = greatest x s.t. m.x<=p
        poly frac(const gd & m) const;

        /// Kleene star of a polynomial (p)*=e+p+p^2+p^3... is a series
        series star() const;
        /// Causal projection of a polynomial. Returns the greatest polynomial Sum g^nid^ti with ni,ti positives
        poly prcaus() const;
        /// Returns a string giving the description of the polynomial
        std::string ToString() const;

		void canon();

		// |===================================================================|
        // | Hadamard product on polynomials                                   |
        // |===================================================================|
        // | Description:												       |
        // | New version of Hadamard product, residuation and dual residuation |
        // | of the Hadamard product on polynomials.   						   |
        // | Added by Davide Zorzenon (07/03/2020)							   |
        // |-------------------------------------------------------------------|
        poly hadamard_prod(const poly & p) const;
        poly hadamard_res(const poly & p) const;
        poly hadamard_dualres(const poly & p) const;
};

  /// to insert a polynomial into the standard ostream
  std::ostream& operator<<(std::ostream &,const poly &);

 /// global function
 poly oplus(const poly &, const poly &);
 /// global function
 poly otimes(const poly &, const poly &);
 /// global function
 poly inf(const poly &, const poly &);
 /// global function
 poly lfrac(const poly &, const poly &);
 /// global function
 poly rfrac(const poly &, const poly &);

 // {{{ Added by Davide Zorzenon
 /// global functions
 poly hadamard_prod(const poly &, const poly &);
 poly hadamard_res(const poly &, const poly &);
 poly hadamard_dualres(const poly &, const poly &);
 // }}} Added by Davide Zorzenon
}
#endif // POLYBC_H
