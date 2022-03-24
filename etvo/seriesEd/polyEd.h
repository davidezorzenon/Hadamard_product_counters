#ifndef POLYED_H
#define POLYED_H

#include "Ed.h"
#include "../wrapperMMGD/matrixWrapper.h"
#include "../wrapperMMGD/seriesWrapper.h"
#include "../common/ISterm.h"
#include "../wrapperMMGD/polyWrapper.h"

/*!
* \file  polyEd.h
*
*/

namespace etvo
{ 
 
/*!
 * \class etvo::polyEd
 *
 * \brief Class for polynomials in the semiring E[[d]].
 *
 * Epsilon and Top element exist
 *
 * \author BC LH JT LARIS
 * \version 2.0
 */

 class seriesEd;  // anticipate declaration

class polyEd:public ISterm
{
public:
  /// Epsilon element
  static polyEd Epsilon();
  /// Top element
  static polyEd Top();
  /// E element
  static polyEd E();

  /// default initialization to Epsilon
  polyEd();
  /// specific initialization : polyEd(true) set to Top, polyEd(false) set to E
  polyEd(bool TopNotE); //true Top false E
  ///initialisation to a polynomial with one Ed term w.d^t
  polyEd(const Ed & m);
  /// initialization to a polynomial created from a collection of Ed terms w.d^t
  /// The initialization leads to a canonical form where Ed terms are sorted
  polyEd(const std::vector<Ed> & v);
  
  /// Creates a polynomial in E[[d]] from a polynomial in MinMax[[g,d]]
  /// An injection from MinMax[[g,d]] to E[[d]]
  static polyEd toPolyEd(const poly & p);
  /// The zero-slice polynomial in MinMax[[g,d]]
  poly toPoly() const;
  /// returns a causal polynomial in E[[d]]
  static polyEd toCausal(const polyEd & p);

  /// Sum of polynomials in E[[d]] 
  polyEd operator+(const polyEd &p) const;
  /// Sum of polynomials in E[[d]] 
  polyEd oplus(const polyEd &p) const;
  /// Sum of polynomials in E[[d]] via a Core Decomposition (see J.Trunk Thesis)
  polyEd oplusCD(const polyEd &p) const;
  /// Sum of a polynomial in E[[d]] with a monomial in  E[[d]]
  polyEd operator+(const Ed & m)const;

  /// The current polynomial pcur is modified as pcur=pcur+m
  void add(const Ed & m);
  /// Lies on polyEd::add(const Ed & m) method
  polyEd operator+=(const Ed & m);

  /// Product of polynomials in E[[d]]
  polyEd operator*(const polyEd & p) const;

  /// Product of one polynomial by one monomial in E[[d]]
  polyEd operator*(const Ed & m) const;
  
  static polyEd otimes(const Ed & m,const polyEd & p);
  /// Product of polynomials in E[[d]]
  polyEd otimes(const polyEd &p) const;
  /// Product of polynomials in E[[d]] via a Core Decomposition (see j.Trunk thesis)
  polyEd otimesCD(const polyEd &p) const;
  
  /// Infimum of two polynomials in E[[d]] : p1.inf(p2) = greatest x s.t. x<=p1 and x<=p2
  polyEd inf(const polyEd & p) const;
  /// Infimum of two polynomials in E[[d]] via a Core Decomposition (see J.Trunk thesis)
  /// Note: p1.inf(p2) is supposed to be equal to p1.infCD(p2), with a different algorithm.
  polyEd infCD(const polyEd & p) const;

  /// Kleene star of a polynomial in E[[d]], the result is a series in E[[d]]
  /// The default algorithm is by using a Core Decomposition of the current polynomial, 
  /// the Kleene star of the Core matrix, and finally the recomposition of a series in E[[d]]
  /// Exception : this method can throw a const char * exception (non causal case) or an etvoException 
  /// when the result is a degenerate matrix (generally, it corresponds to liveness issues for the corresponding WB-TEG) 
  seriesEd star() const;

  /// Computation of the left-multiplication residuation:  p1.lfrac(p2) =p2\p1= greatest x s.t. p2.x <= p1
  polyEd lfrac(const polyEd &) const;
  /// Computation of the left-multiplication residuation via a Core Decomposition :  p1.lfracCD(p2) =p2\p1= greatest x s.t. p2.x <= p1
  /// Note: p1.lfrac(p2) is supposed to be equal to p1.lfracCD(p2) with a different algorithm
  polyEd lfracCD(const polyEd &) const;
  /// Computation of the left-multiplication residuation:  p1.lfrac(m) =m\p1= greatest x s.t. m.x <= p1
  polyEd lfrac(const Ed & m) const;
  /// Computation of the right-multiplication residuation:  p1.rfrac(p2) =p1/p2= greatest x s.t. x.p2 <= p1
  polyEd rfrac(const polyEd &) const;
  /// Computation of the right-multiplication residuation via a Core Decomposition:  p1.rfrac(p2) =p1/p2= greatest x s.t. x.p2 <= p1
  /// Note: p1.rfrac(p2) is supposed to be equal to p1.rfracCD(p2), with a different algorithm
  polyEd rfracCD(const polyEd &) const;
  /// Computation of the right-multiplication residuation:  p1.rfrac(m) =p1/m= greatest x s.t. x.m <= p1
  polyEd rfrac(const Ed & m) const;
  
  /// Check equality
  bool operator==(const polyEd &) const;
  /// Check difference
  bool operator!=(const polyEd &) const;
  /// Check order on polynomials in E[[d]]
  bool operator<=(const polyEd &) const;
  /// Check order on polynomials in E[[d]]
  bool operator>=(const polyEd & ) const; 

  /// When the current polynomial is different from p, gives the first different monomial
  /// Otherwise, if both polynomials are equals, returns Ed::E()=g0.d0
  Ed getFirstDif(const polyEd & p) const;

  /// Do not use it. Use polyEd::star(). Only for DEBUGGING purpose.
  polyEd transientStar(int Tmax) const;

  /// Check if a polyEd is in canonical form, say for a sum w_id^t_i, w_i and t_i are strictly ordered.
  bool isCanon() const;
  /// set to the canonical form
  void canon();

  /// Gives the maximal gain
  void getMaxGain(unsigned int & mu, unsigned int & beta) const;
  /// Gives th Least Common multiple of gains
  void getLcmGain(unsigned int & mu, unsigned int & beta) const;
  /// Returns the periodicity as a pair
  std::pair<unsigned int, unsigned int> getPeriodicity() const;

  /// return the monomials as a collection of Ed terms
  std::vector<Ed> getTerms() const;
  /// remove term number i in the polynomial
  void removeTerm(unsigned idx);

  /// Returns a copy of monomial in position idx in the polynomial
  Ed operator[](unsigned idx) const;
  /// Returns the size = the number of monomials. For Epsilon and Top, size=0.
  unsigned int size() const;

  /// returns a string that gives the description of the current polynomial. Is depending on the canonical form of gNg terms
  std::string toString() const;
  /// returns a string that gives the description of the current polynomial as a sum of g^n.m<seq>.d^t terms
  std::string toStringAsMuVar() const;
  	
   /// check if is equal to E()=g0.d0
   bool isE() const;

   /// returns the Core matrix<poly> (in MinMax[[g,d]]) of the current polynomial
   /// a polynomial p=Mu_m Q Beta_b
   /// with Mu_m=[mu_m g^1mu_m g^2mu_m ... g^(m-1)mu_m]
   /// with Beta_b=[beta_b g^(b-1) ... beta_b g^1 beta_b]'
   /// and Q in MinMax[[g,d]]
   /// Mu_m and Beta_b are implicit from the size of Core
   matrix<poly> getCore(unsigned ratio=1) const; 

   /// computes the recomposition of a polyEd polynomial from a Core Decomposition core.
   static polyEd coreToPolyEd(const matrix<poly>& core);
   
   /// returns the specific matrix Beta_N.Mu_N
	/// with Mu_m=[mu_m g^1mu_m g^2mu_m ... g^(m-1)mu_m]
   /// with Beta_b=[beta_b g^(b-1) ... beta_b g^1 beta_b]'
   static etvo::matrix<poly> getMatN(unsigned size);

   /// returns the maximal Core matrix<poly> (in MinMax[[g,d]]) of the current polynomial
   matrix<poly> getCoreMax(unsigned ratio=1) const;   

   /// used in the creation of POV-Ray script for a polyEd object
   void toPov(graphicPR::PovRay & pov, graphicPR::PovRay::Color c);
private:
  void sort();
  void simplify();
  //void SimplifyUpTo(unsigned idx); //TODO to improve the sum with Ed
	std::vector<Ed> _poly;
};
std::ostream & operator<<(std::ostream & st,const polyEd & p);
}/// end namespace
#endif // POLYED_H
