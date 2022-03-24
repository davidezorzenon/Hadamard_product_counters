#ifndef GDIII_H
#define GDIII_H

/* MODIF Jan 2012
#include "..\minmaxgd\gd.h"
#include "..\common\global.h"
*/

#include "../libminmaxgd/include/gd.h"
#include "../common/global.h"

/*!
* \file  gdWrapper.h
*
* /

/*! \namespace etvo
* namespace for ETVO classes
*/
namespace etvo
{
class poly;

/*!
* \class etvo::gd
* \brief Wrapper class to mmgd::gd from MinMaxGD library
*
* Class for monomials  g^n.d^t with finite exponents [n,t finite]
* In normal cases, no epsilon and no Top elements. But to keep compatible with MinMaxGD, degenerate monomials
* can be obtained.
*
* \author BC LH JT LARIS
* \version 2.0
*/

class gd:public mmgd::gd
{
     public:
       /// gives the neutral element e=g^0.d^0
        static gd E();

        /// default constructor : set to g^0d^0
        gd();
        /// constructor : set to g^g.d^d
        gd(long g,long d);
        /// copy constructor
        gd(const gd & m);
        /// construcor : set a etvoII::gd from a mmgd::gd
        gd(const mmgd::gd & m);
        /// operator=: assignation
        gd& operator=(const gd & m);

        /// operator*: product of monomials g^n1d^t1.g^n2d^t2=g^(n1+n2)d^(t1+t2)
        gd operator*(const gd & m) const;

        /// returns n in g^nd^t
        long getg() const;
        /// returns t in g^nd^t
        long getd() const ;
        /// check if is equal to g^0d^0
        bool isE() const;
        /// check if n or t are infinite
        bool isDegenerate() const;

        bool operator!=(const gd & m) const;
        bool operator==(const gd &) const;
        bool operator>=(const gd &) const;
        bool operator<=(const gd &) const;

        ///  inf: infimum of monomials inf(g^n1d^t1,g^n2d^t2)=g^max(n1,n2)d^min(t1,t2)
        gd inf(const gd & m) const;
        /// frac : g^n1d^t1/g^n2d^t2 = g^(n1-n2)d^(t1-t2)
        gd frac(const gd & m) const;

        /// g^n1d^t1 + g^n2d^t2 is a polynomial etvoII::poly
        poly operator+(const gd & m) const;
        /// g^n1d^t1 + (g^n2d^t2 + ... + g^nKd^tK) is a polynomial
        poly operator+(const poly & p) const;
        /// g^n1d^t1 * (g^n2d^t2 + ... + g^nKd^tK) is a polynomial
        poly operator*(const poly & p) const;
        /// returns a string giving the description of a monomial with the format "g2.d3"
        std::string ToString() const;

        // |===============================================================|
        // | Hadamard product on monomials                                 |
        // |===============================================================|
        // | Description:												   |
        // | New version of Hadamard product, residuation and dual		   |
        // | residuation of the Hadamard product on monomials.			   |
        // | Added by Davide Zorzenon (07/03/2020)						   |
        // |---------------------------------------------------------------|
        gd hadamard_prod(const gd & m) const;
        gd hadamard_res(const gd & m) const;
        gd hadamard_dualres(const gd & m) const;
};

    std::ostream& operator<<(std::ostream&, const gd&);

}
#endif // GDBC_H
