#ifndef DDD_H
#define DDD_H

#include<string>
#include<utility>
#include <iostream>

#include "../Fper/Fmaxp.h"

/*!
* \file  dDd.h
*
*/

/*! \namespace etvo
* namespace for ETVO classes
*/
namespace etvo
{
  class T_op; //anticipated declaration

/*!
* \class etvo::dDd
* \brief Class to describe terms in T[[g]] written d^t.Delta_(T).d^t' 
*
* Formal series in T[[g]] can be seen as infinite sums of terms ( d^ti.Delta_(T).d^ti').g^n_i
*
* \author BC LH JT LARIS
* \version 2.0
*/
/// terms like d^tl TM_m d^tc TB_b d^tr

class dDd  
{
    public:
        /// set the type of canonical form 0=left 1=center 2=right
        static void setCanonForm(unsigned val=0);
		static unsigned getCanonForm();

        /// Create term d^tl TM_tmb d^tc TB_tmb d^tr
        dDd(int tl,unsigned int tmb,int tc,int tr);
        /// Create term d^tl TM_tmb d^0 TB_tmb d^tr
        dDd(int tl,unsigned int tmb,int tr);
        /// d^0 M_1 d^tc B_1 d^0 = d^tc
        dDd(int tc);

        /// getters tl, tm, tb, br of term d^tl M_m B_b d^tr
        int getTl() const;
        unsigned int getTmb() const;
        int getTc() const;
        int getTr() const;

        int invariant() const;

        ///comparison of terms (with the same Periodicity)
        bool operator<=(const dDd & m) const;
        bool operator>=(const dDd & m) const;
        bool operator==(const dDd & m) const;

        /// gives canonical form (depends on the choice made by setCanonForm)
        void canon();
        /// set Left form [-tmb<tr<=0 and tc=0]
        void canonL();
        /// set Central
         void canonC();
        /// set Right form [-tmb<tl<=0 and tc=0]
        void canonR();

        /// value of Release function Rw(ti) = ceil(((tr+ti)/mb)+tc)*mb+tl
        int Rw(int ki) const;
        /// returns function Rw
        Fmaxp getRw() const;

         /// Extension of g^nl M_m B_b g^nr -> SUM_i g^(nl+i* M_(mul*m) B_(mul*_b) g^(mul-1) ....
        //T_op ExtendBy(unsigned mul) const;

        ///  periodicity as a pair <_b,_m>
        std::pair<unsigned,unsigned> getPeriodicity() const;
        /// gain rational(m/b)
       // boost::rational<int> getGainAsRational() const;

        std::string toString(unsigned nVer=0) const;
    protected:
        /// set canonical form of dDd (default left form)
        static unsigned _canon;
        /// tl, tmb, tc, tr
        int _tl;
        unsigned int _tmb;
        int _tc;
        int _tr;
};
  /*! operator to print an element into the standard ostream */
    std::ostream & operator<<(std::ostream & f, const dDd & m);

} /// namespace ETVO
#endif // DDD_H
