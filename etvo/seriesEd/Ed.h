#ifndef ED_H
#define ED_H

#include "../etop/E_op.h"
#include "../grafic/PovRay.h"

#include<iostream>

namespace etvo
{

class polyEd;
class seriesEd;

/*!
 * \class etvo::Ed
 *
 * \brief Class for monomials in the semiring E[[d]].
 *
 * No epsilon, no top element
 *
 * \author BC LH JT LARIS
 * \version 2.0
 */
class Ed
{
    public:
     /// basic operator as Ed element : Ed::g(n)=g^n.d^0       
        static Ed g(int n);    
		/// basic operator as Ed element : Ed::m(mul) = m_mul
        static Ed m(unsigned mul);  
		/// basic operator as Ed element : Ed::N(mul,meta) = m_mul.b_beta
        static Ed N(unsigned mul,unsigned beta);  
		/// basic operator as Ed element : Ed::N(mb) = m_mb.b_mb
		static Ed N(unsigned mb); 
		/// basic operator as Ed element : Ed::b(b) = b_b
        static Ed b(unsigned b);  
		/// basic operator as Ed element : Ed::d(t) =d^t
		static Ed d(int d);      
        /// neutral operator
        static Ed E();

        /// init as neutral element
        Ed();
		/// init as g^n.d^t
		Ed(int n, int d);		
		/// init as g^n.m_m.b_b.g^np.d^t
		Ed(int n,unsigned m,unsigned b,int np,int d);
		/// init as g^n.nabla_mb.g^np.d^t
		Ed(int n, unsigned nabla,int np, int d);
		/// init as w.d^t element
        Ed(const E_op & w, int t);      

		/// returns the E-operator w of w.d^t
        E_op getE_op() const;
		/// sets the E-operator w of w.d^t
        void setE_op(const E_op & );
		/// returns the t (delay) exponent of w.d^t
        int getD() const;
		/// returns the t exponent (delay) of w.d^t
        void setD(int d);
		/// gives the gain mu/beta of the E-operator w of w.d^t
        void getGain(unsigned int & mu, unsigned int & beta) const;

		///  returns w.d^t =w_this.d^t_this * w_m.d^t_m
        Ed operator*(const Ed & m) const;
		///  returns w.d^t =w_this.d^t_this * w_m.d^t_m
        Ed otimes(const Ed & m) const;
		///  returns the polynomial w_this.d^t_this * p
        polyEd operator*(const polyEd & p) const;
		///  returns the polynomial w_this.d^t_this * p
        polyEd otimes(const polyEd & p) const;

		///  returns the series w_this.d^t_this*s with s=(p+q.r*)
        seriesEd operator*(const seriesEd & s) const;
		///  returns the series w_this.d^t_this*s with s=(p+q.r*)
        seriesEd otimes(const seriesEd & s) const;
		///  returns w_this.d^t_this + w_m.d^t_m which is a polynomial polyEd
        polyEd oplus(const Ed & m) const;
		///  returns w_this.d^t_this + w_m.d^t_m which is a polynomial polyEd
        polyEd operator+(const Ed & m) const;
		///  returns w_this.d^t_this + p which is a polynomial polyEd
        polyEd oplus(const polyEd & p) const;
		///  returns w_this.d^t_this + p which is a polynomial polyEd
        polyEd operator+(const polyEd & p) const;

		///  returns w.d^t =inf(w_this.d^t_this,w_m.d^t_m)
        Ed inf(const Ed & m)const;
		///  returns w.d^t =w_m.d^t_m\w_this.d^t_this
		Ed lfrac(const Ed & m) const;
		///  returns w.d^t =w_this.d^t_this/w_m.d^t_m
        Ed rfrac(const Ed &m) const;

		/// returns a string with the description of the current term w.d^t
		/// The format depends on the current canonical form of gNg terms
		/*!
		* m1 = Ed(gNg(3, 2, 3, 5),5);   // g3.m2.b3.g5.d5	
		*
		* gNg::setCanonForm(0);   // left form
		*
		* cout << m1.toString() << endl;  // g5.m2.b3.g2.d5
		*
		* gNg::setCanonForm(1);  // central form
		*
		* cout << m1.toString() << endl;  // g1.m2.g2.b3.g2.d5
		*
		* gNg::setCanonForm(2);	// right form
		*
		* cout << m1.toString() << endl;  //g1.m2.b3.g8.d5
		*
		*/
        std::string toString() const;

		/// returns a string with the description of the current term w.d^t as a variable weighted operator \mu_<seq>
		/// For instance (m3.b2.g1 + g2.m3.b2).d3 =g0.m<2,1>.d3
		/// This method returns a descriptions as a sum of monomials g^n.m<seq>.d^t
        std::string toStringAsMuVar() const;

		/// put in a canonical form 
        void canon();

		/// check Ed equality
        bool operator==(const Ed & ) const;		
        bool operator!=(const Ed &) const;
        bool operator<=(const Ed &) const;
        bool operator>=(const Ed &) const;

		/// used to create PovRay graphical output
        void toPov(graphicPR::PovRay & pov, graphicPR::PovRay::Color c,Ed * prec , Ed* next);
    private:
        int _d;
        E_op _w;
}; 

	/// insert an Ed term into the standard ostream
    std::ostream & operator<<(std::ostream & st,const Ed & m);
}
#endif // ED_H
