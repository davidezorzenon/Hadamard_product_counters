#ifndef SERIEIII_H
#define SERIEIII_H

/* MODIF Jan 2019
#include "..\minmaxgd\serie.h"
*/
#include "../libminmaxgd/include/serie.h"
#include "polyWrapper.h"
#include <string>
#include "../common/ISterm.h"

/*!
* \file  seriesWrapper.h
*
* /

/*! \namespace etvo
* namespace for ETVO classes
*/

namespace etvo
{

  /*!
  * \class etvo::series
  *
  * \brief Wrapper class to mmgd::serie from MinMaxGD library
  *
  * Class for  ultimately periodic series s=p + q [g^n.d^t]* in MinMax[[g,d]], where p and q are polynomials
  *
  * An epsilon and a top series exists
  *
  * \author BC LH JT LARIS
  * \version 2.0
  */

class series:public mmgd::serie, public etvo::ISterm
{
    public:
        /// gives the epsilon series
        static series Epsilon();
        /// gives the series e=g0.d0
        static series E();
        /// gives the top series T
        static series Top();

        bool isE() const;
        bool isPoly() const;
        bool isDegenerate() const;

        /// default constructor : epsilon series p=eps q=eps r=g0.d0
        series();

        /// constructor : set a series from only one monomial (uses the next constructor)
        series(const gd &);
        /// constructor : set a series from a polynomial
        series(const poly &);

        /// constructor :  set a etvoII::series from a mmgg::serie
        series(const mmgd::serie & s);
        /// constructor : set a etvoII::series from p+q.r* representation
        series(const poly & p,const poly & q,const gd & r);

        /// gives polynomial p (as etvoII::poly)
        poly getP() const;
        /// gives polynomial q (as etvoII::poly)
        poly getQ() const;
        /// gives monomial r (as etvoII::gd)
        gd getR() const;

        bool operator!=(const series & s) const;
        bool operator==(const series & s) const;
        bool operator<=(const series & s) const;
        bool operator>=(const series & s) const;

        /// computes the sum of two series in MinMax[[g,d]]
        series operator+(const series & s) const;
        /// computes the product of two series in MinMax[[g,d]]
        series operator*(const series & s) const;
        /// computes the infimum of two series in MinMax[[g,d]]
        series inf(const series & s) const;

        /// computes the Kleene star of a series in MinMax[[g,d]]
        series star() const;


        /// equiv. frac because the product is commutative
        series lfrac(const series & s) const;
        /// equiv. frac because the product is commutative
        series rfrac(const series & s) const;
        ///  s1.frac(s2) is the greatest series x s.t. s2.x <= s1
        series frac(const series & s) const;
        ///  s1.frac(g2.dt) is the greatest series x s.t. gn.dt.x <= s1
        series frac(const gd & m) const;
        ///  s1.frac(p) is the greatest series x s.t. p.x <= s1
        series frac(const poly & p) const;

        /// gives the causal projection of the current series.
        series prcaus() const;

        /// gives a string giving the description of a series in a format
        /// g1.d2+g2.d3+(g4.d5+g6.d7).[g3.d3]*
        std::string ToString() const;

        // |===================================================================|
        // | Hadamard product on series                                        |
        // |===================================================================|
        // | Description:													   |
        // | New version of Hadamard product, residuation and dual residuation |
        // | of the Hadamard product on series.           					   |
        // | Added by Davide Zorzenon (07/03/2020)							   |
        // |-------------------------------------------------------------------|
        series hadamard_prod(const series & s) const;
        series hadamard_res(const series & s) const;
        series hadamard_dualres(const series & s) const;
};

/// global function to print a series in the standard ostream
std::ostream&  operator<<(std::ostream &flot, const series &serie1);//surdef. de <<

///global functions
series star(const series & s);
series oplus(const series &, const series &);
series inf(const series &, const series &);
series otimes(const series &, const series &);
series lfrac(const series &, const series &);
series rfrac(const series &, const series &);

// {{{ Added by Davide Zorzenon
series hadamard_prod(const series &, const series &);
series hadamard_res(const series &, const series &);
series hadamard_dualres(const series &, const series &);
// }}} Added by Davide Zorzenon

}

#endif // SERIEIII_H
