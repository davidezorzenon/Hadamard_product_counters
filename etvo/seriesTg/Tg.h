#ifndef TG_H
#define TG_H
#include "../etop/T_op.h"
#include "../grafic/PovRay.h"
#include<iostream>

namespace etvo
{
 
  class polyTg;
  class seriesTg;
  /*!
  * \class etvo::Tg
  *
  * \brief Class for monomials in the semiring T[[g]].
  *
  * No epsilon, no top element
  *
  * \author BC LH JT LARIS
  * \version 2.0
  */
class Tg
{
    public:
      /// neutral operator as Tg element (d0.g0)
      static Tg E();

      /// basic gamma operator as Tg element: Tg::g(n)= d0.gn
      static Tg g(int n);    
      /// basic Delta_mb operator as Tg element: Tg::D(mb)=  D_mb.g0
      static Tg D(unsigned mb);  // Delta_mb
      /// basic delta operator as Tg element: Tg::d(t)=  dt.g0
      static Tg d(int t);      // delta^t 

      /// init as neutral opertor (d0.g0)
      Tg();
      /// init as dt.gn operator
      Tg(int t,int n);
      /// init as dt.D_D.dtp.gn operator
      Tg(int t,unsigned D,int tp, int n);
      /// init as w.gn operator where w is a T-operator
      Tg(const T_op & w, int g);

      /// returns w, the T-operator of the current term 
      T_op getT_op() const;
      /// sets the T-operator 
      void setT_op(const T_op & );
      /// returns the exponent n of the current term w.gn
      int getG() const;
      /// sets the exponent n of w.gn
      void setG(int n);

       /// gives the gain of the T-operator w of w.g^n
       void getGain(unsigned int & mb) const;

       /// returns the product of two Tg terms
        Tg operator*(const Tg & ) const;
        /// returns the product of two Tg terms
        Tg otimes(const Tg &) const;

        /// returns the product of the current Tg term by a polyTg polynomial
        polyTg operator*(const polyTg &) const;
        /// returns the product of the current Tg term by a polyTg polynomial
        polyTg otimes(const polyTg &) const;

        // TODO
       // polyTg operator*(const seriesTg &) const;
       // polyTg otimes(const seriesTg &) const;

        /// returns the sum of the current Tg term with Tg term. It is a polynomial
        polyTg operator+(const Tg &) const;

        /// returns the sum of the current Tg term with Tg term. It is a polynomial
        polyTg oplus(const Tg &) const;
        
        /// returns the sum of the current Tg term with  a polyTg polynomial
        polyTg operator+(const polyTg &) const;

        /// returns the sum of the current Tg term with a polyTg polynomial
        polyTg oplus(const polyTg &) const;        
                
        /// returns the infimum of two Tg terms
        Tg inf(const Tg & )const;
     
        Tg lfrac(const Tg &) const;
        Tg rfrac(const Tg &) const;

        /// returns a string which describes the current Tg term
        std::string toString() const;
        /// returns a string which describes the current Tg term as a variable delta operator
        std::string toStringAsDeltaVar() const;

        /// puts the current term into a canonical form
        void canon();

        /// checks terms equality
        bool operator==(const Tg & ) const;
        bool operator!=(const Tg &) const;
        bool operator<=(const Tg &) const;
        bool operator>=(const Tg &) const;

		/// used to create PovRay graphical output
		void toPov(graphicPR::PovRay & pov, graphicPR::PovRay::Color c, Tg * prec, Tg* next);
    private:
        int _g;
        T_op _w;
};
    /// standard output of a Tg term
    std::ostream & operator<<(std::ostream & st,const Tg & m);
}

#endif // TG_H
