#ifndef gNg_H
#define gNg_H
#include<string>
#include<utility>
#include <iostream>

#include "../Fper/Fminp.h"


/*!
* \file  gNg.h
*
*/

/*! \namespace etvo
* namespace for ETVO classes
*/
namespace etvo
{
class E_op;

/*!
* \class etvo::gNg
* \brief Class to describe terms in E[[d]] written g^n.Nabla_(m|b).g^n' = g^nl.M_m.B_b.g^nr
*
* Formal series in E[[d]] can be seen as infinite sums of terms (g^nli.M_m.B_b.g^nri).d^t_i
*
* We can also decompose a gNg term into a central form (g^nli.M_m.g^nci.B_b.g^nri) where nli<m and nri<b
*
* \author BC LH JT LARIS
* \version 2.0
*/

class gNg   
{
    public:
        /*! Class method to choose the canonical form of gNg terms 
        *
        * \param val=0-left form 1-central form 2- right form
        */
        static void setCanonForm(unsigned val=0);  //0=Left 1=Center 2=Right
		static unsigned getCanonForm();

        /// Create term g^nl.M_m.g^nc.B_b.g^nr
        gNg(int nl,unsigned int m,int nc,unsigned int b,int nr);
        /// Create term g^nl.M_m.g^0.B_b.g^nr
        gNg(int nl,unsigned int m,unsigned int b,int nr);
        /// Create term g^nl.M_mb.g^0.B_mb.g^nr
        gNg(int nl,unsigned int mb,int nr);
        /// g^0.M_1.g^nc.B_1.g^0 = g^nc
        gNg(int nc);

        /// getter : gives  nl in g^nl.M_m.g^nc.B_b.g^nr
        /// depends on the chosen form
        int getNl() const;
        /// getter : gives  m in g^nl.M_m.g^nc.B_b.g^nr       
        unsigned int getM() const;
        /// getter : gives  nc in g^nl.M_m.g^nc.B_b.g^nr
        /// depends on the chosen form (it is 0 in left and right form)
        int getNc() const;
        /// getter : gives  b in g^nl.M_m.g^nc.B_b.g^nr       
        unsigned int getB() const;
        /// getter : gives  nc in g^nl.M_m.g^nc.B_b.g^nr
        /// depends on the chosen form 
        int getNr() const;

        
        bool operator<=(const gNg & m) const;
        bool operator>=(const gNg & m) const;
        bool operator==(const gNg & m) const;

        /// set to the canonical form (depends on setCanonForm choice)
        void canon();
        /// set to the Left form [0<=nr<=b-1 and nc=0]
        void canonL();
        /// set to the Central [0<=nl<=m-1 and  0<=nr<=b-1]
         void canonC();
        /// set to the Right form [0<=nl<=m-1 and nc=0]
        void canonR();

        /// value of C/C function Fw(ki) = floor(((nr+ki)/b)+nc)*m+nl
        int Fw(int ki) const;
        /// returns function Fw as a Fminp object
        Fminp getFw() const;
       
        /// Extension of g^nl M_m B_b g^nr -> SUM_i g^(nl+i* M_(mul*m) B_(mul*_b) g^(mul-1) ....
        E_op extendBy(unsigned mul) const;

        /// returns periodicity as a pair <_b,_m>
        std::pair<unsigned,unsigned> getPeriodicity() const;
      
        /// gives a string description of a gNg term
        /// \param nVer (default=0)   
        ///  
        /// if nVer=0 -> produces string  "g-3.m3.b4.g4"         
        /// if nVer!=0 -> only for development 
        std::string toString(unsigned nVer=0) const;
    protected:
        /// set the canonical form of gNg (default left form)
        static unsigned _canon;
        /// nl,m,b,nr
        int _nl;
        unsigned int _m;
        int _nc;
        unsigned int _b;
        int _nr;
};

    /*! operator to print an element into the standard ostream */
    std::ostream & operator<<(std::ostream & f, const gNg & m);
}
#endif // gNg_H
