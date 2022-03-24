#ifndef SERIESED_H
#define SERIESED_H
#include "polyEd.h"
#include "../wrapperMMGD/seriesWrapper.h"
#include "../wrapperMMGD/matrixWrapper.h"
#include<iostream>
#include "../common/ISterm.h"


/*!
* \file  seriesEd.h
*/


namespace etvo
{
	/*!
 * \class etvo::seriesEd
 *
 * \brief Class for ultimately-periodic series in the semiring E[[d]]. In a general way, the series
 * are described by two standard (canonical) forms  s=p+q.r*=p'+r'*.q' where p,p',q,q' are polynomials in E[[d]]
 * and r/r' are etvo::gd terms (in MinMax[[g,d]]).
 *
 * s=p+q.r* is called the right-form (because the periodic pattern is expressed with a right multiplication by r*)
 *
 * s=p'+r'*.q' is called the left-form (because the periodic pattern is expressed with a left multiplication by r'*)
 *
 * This class provides the main operations on ultimately-periodic series in E[[d]] such as :sum,product, Kleene star 
 * (when it is possible to compute the Kleene star), left/right product residuation. Some operations are possible
 * thanks to a Core Decomposition introduced by J.Trunk. 
 *
 * The library contains also some usefull functions to swap left/right form, to obtain a projection into MinMax[[g,d]] 
 * (zero-slice projection). By using the boost library, it is also possible to express series in a string format 
 * for which a parser is given.
 * Epsilon and Top element exist
 *
 * \author BC LH JT LARIS
 * \version 2.0
 */
  class seriesEd:public ISterm
  {
  private:
    bool _droite;  // true if right-form
    polyEd _p;     // _p polynomial
    polyEd _q;     // _q polynomial
    long _gammaR;  // exponent of gn in p+q.[gn.dt]*
    long _gammaL;  // exponent of gn in p+[gn.dt]*.q
    long _delta;  // exponent of dt in p+[gn.dt]*.q or in p+q.[gn.dt]*

	// internal usefull functions to simplify series in right-form
    void reductionPeriodicR();  
    void toProperFormR();
    void toProperPeriodicR();
    void toProperTransientR();
    void reductionTransientR();

	// internal usefull functions to simplify series in left-form
    void reductionPeriodicL();
    void toProperFormL();
    void toProperPeriodicL();
    void toProperTransientL();
    void reductionTransientL();
    void rightLeft();
    void degenerateCase();

	// internal usefull functions to compute the domination point for sums
    static long getDominationTimeLH(const seriesEd & slow, const seriesEd & fast);
    static long getDominationTime(const seriesEd & s1, const seriesEd & s2);   

    static seriesEd star(const etvo::series & s, unsigned nablaM, int gK);

  public:
    /// The epsilon description of seriesEd
    static seriesEd Epsilon();
	/// The Top description of seriesEd
    static seriesEd Top();
	/// The description of g0.d0 as seriesEd
    static seriesEd E();
        
    /// Default initialization : epsilon  (p=eps q=eps r=g1.d0)
    seriesEd();

    /// Initialization as Top (true) OR E(false) 
	/// Top (p=T q=T r=g1.d0)
	/// E (p=eps q=g0.d0 r=g1.d0)
    seriesEd(bool TopNotE);

	/// Initialization of a seriesEd from Ed term m (p=eps q=m r=g1.d0)	
	seriesEd(const Ed & m);

	/// Initialization of a seriesEd from polyEd term q (p=eps q=q r=g1.d0)	
	seriesEd(const polyEd & q);
	
    /// Initialization of a seriesEd from periodic p,q,r (right/left) form
	/// if right=true ->  s=p+q.[gn.dt]*
	/// otherwise ->  s=p+[gn.dt]*.q
    seriesEd(const polyEd & p,const polyEd & q, long n, long t, bool right = true);
	/// Initialization of a seriesEd from periodic p,q,r (right/left) form
	/// if right=true ->  s=p+q.[r]*
	/// otherwise ->  s=p+[r]*.q
    seriesEd(const polyEd & p, const polyEd & q, const gd & r,bool right = 1);
       
    /// check if the current series in Right form
    bool isRightForm() const;
	/// check if the current series in Left form
    bool isLeftForm() const;
	/// check if it is a polynomial
    bool isPolynomial() const;
	/// check if it is in proper form
    bool isProper() const;
    /// check if it is a neutral seriesEd
    bool isE() const;    
    /// leads to the canonical left or right form (the simplest proper form)
    void canon();

    /// to Right form
    void toRight();

    /// to Left form
    void toLeft();
    /// getter returning p
    polyEd getP() const;
	/// getter returning q
    polyEd getQ() const;
	/// getter returning r
    gd getR() const;
       
    /// returns the response to I,g1.I,g2.I ...
    std::vector<series> toImpulseResponse() const;

	/// returns the Least Common multiple of gains in the terms of the current series
    void getLcmGain(unsigned int & mu, unsigned int& beta) const;
	/// returns the Maximum of gains in the terms of the current series
    void getMaxGain(unsigned int& mu, unsigned int& beta) const;
	/// returns the gain as a pair (mu,beta)
    std::pair<unsigned int, unsigned int> getMaxGain() const;

	/// returns the string description of a series in E[[d]]. This format is compatible
	/// with the parser of seriesEd (needs boost installation)
    std::string toString() const;
	/// returns the string description of a series in E[[d]] with mu<seq> operators. This format is compatible
	/// with the parser of seriesEd (needs boost installation)
    std::string toStringAsMuVar() const;

	/// check equality
    bool operator==(const seriesEd & s) const;
	/// check difference
    bool operator!=(const seriesEd &)const;
	/// check order on series
    bool operator<=(const seriesEd &) const;
	/// check order on series
    bool operator>=(const seriesEd &) const;

	/// sum of series in E[[d]] : s1.oplus(s2) 
	/// Throws an exception if s1 and s2 unbalanced (different gains)
    seriesEd oplus(const seriesEd & s) const;
	/// sum of series and polynomial in E[[d]] : s1.oplus(p1)
	/// Throws an exception if s1 and p1 unbalanced (different gains)
    seriesEd oplus(const polyEd & p) const;

	/// product of series in E[[d]] : s1.otimes(s2)
    seriesEd otimes(const seriesEd & s) const;
	/// product of a series by a monomial in E[[d]] : s1.otimes(m)
    seriesEd otimes(const Ed & m) const;
	/// product of a series by a polynomial in E[[d]] : s1.otimes(p)
    seriesEd otimes(const polyEd & p) const;

	/// [STATIC] sum of a polynomial and a series in E[[d]] : seriesEd::oplus(p,s)
	/// Throws an exception if p and s unbalanced (different gains)
    static seriesEd oplus(const polyEd & p, const seriesEd & s);
	/// [STATIC] product of a monomial and a series in E[[d]] : seriesEd::otimes(m,s)	
    static seriesEd otimes(const Ed & m, const seriesEd & s);
	/// [STATIC] product of a polynomial and a series in E[[d]] : seriesEd::otimes(p,s)
    static seriesEd otimes(const polyEd & m, const seriesEd & s);

	/// sum of series in E[[d]]  : s1+s2  (calls oplus) 
	/// Throws an exception if s1 and s2 unbalanced (different gains)
    seriesEd operator+(const seriesEd & s) const;
	/// product of series in E[[d]]  : s1*s2
    seriesEd operator*(const seriesEd  & s) const;
	/// product of a series by a monomial in E[[d]]  : s1*m
    seriesEd operator*(const Ed  & m) const;
	/// product of a series by a polynomial in E[[d]]  : s1*p
    seriesEd operator*(const polyEd  & p) const;

	/// returns the Kleene star of a series in E[[d]]. Operates via a
	/// Core Decomposition of the series (see J.Trunk thesis)
	/// Throws an exception if the computation is not handled yet (degenerate case)
	seriesEd star() const;

	/// returns the Kleene star of a series in E[[d]]. A different algorithm 
	/// is used (without Core Decomposition) to obtain the result.
	/// Throws an exception if the computation is not handled yet (degenerate case)
    seriesEd starAlternate() const;

	/// returns the Kleene star of a series in E[[d]]. Operates via a
	/// Core Decomposition of the series (see J.Trunk thesis)
    seriesEd starCD() const;
	/// returns the star of a series by using the 
	/// star of a polynomial as function.
    seriesEd starPolyBased() const;
	
	/// left-product residuation : s1.lfrac(s2) = s2\s1 
	seriesEd lfrac(const seriesEd & s) const;
	/// right-product residuation : s1.rfrac(s2) = s1/s2 
	seriesEd rfrac(const seriesEd & s) const;

    /// operations via Core Decomposition : otimes
    seriesEd otimesCD(const seriesEd & s) const;
	/// operations via Core Decomposition : oplus
    seriesEd oplusCD(const seriesEd & s) const;  
	/// operations via Core Decomposition : inf
    seriesEd infCD(const seriesEd & s) const;
	/// inf of series
    seriesEd inf(const seriesEd & s) const;
	/// operations via Core Decomposition : lfrac
    seriesEd lfracCD(const seriesEd & s) const;
	/// operations via Core Decomposition : rfrac
    seriesEd rfracCD(const seriesEd & s) const;
	
    // to do : develop inf as oplus is developped(domination ...)
    // seriesEd inf(const seriesEd & s) const;
    // to do : develop lfrac and rfrac by alternative algorithm
    // seriesEd lfrac(const seriesEd & s) const;   
    // seriesEd rfrac(const seriesEd & s) const;
  
	/// static function to develop the first terms of p+q.[r]* or p+[r]*.q up to a given deltaT time value
    static polyEd getPolyUpTo(int deltaT, const polyEd & p, const polyEd & q, const gd & r, bool droite = true);
	/// method to develop the first terms of p+q.[r]* or p+[r]*.q up to a given deltaT time value
    polyEd getPolyUpTo(int deltaT) const;

	/// returns the projection of s into the set of causal series in E[[d]] (not reliable yet)
    static seriesEd toCausal(const seriesEd & s);

    /// injection series(mmgd)->seriesEd
    static seriesEd toSeriesEd(const series & s);
    /// projection seriesEd->series (zero slice)
    series toSeries() const;
    /// conversion CORE decomposition ->  seriesEd
    static seriesEd coreToSeriesEd(const matrix<series> & C);

	/// returns the Core matrix of the current series.
	/// A ratio!=1 allows us to expand the matrix to a multiple of the basic gain.
    etvo::matrix<series>  getCore(unsigned ratio=1) const;
	/// returns the maximal Core matrix of the current series.
	/// A ratio!=1 allows us to expand the matrix to a multiple of the basic gain.
    etvo::matrix<series>  getCoreMax(unsigned ratio=1) const;	
    static etvo::matrix<series>  getMatN(unsigned size);        
  };

  std::ostream & operator<<(std::ostream & f, const seriesEd & s);

  // necessary for matrix<T> computations.
  seriesEd star(const seriesEd & s);
  seriesEd oplus(const seriesEd &, const seriesEd &);
  seriesEd inf(const seriesEd &, const seriesEd &);
  seriesEd otimes(const seriesEd &, const seriesEd &);
  seriesEd lfrac(const seriesEd &, const seriesEd &);
  seriesEd rfrac(const seriesEd &, const seriesEd &);

  /// element g^n in E[[d]]
  seriesEd eg(int n);
  /// element d^t in E[[d]]
  seriesEd ed(int t);
  /// element mu_m in E[[d]]
  seriesEd em(unsigned m);
  /// element beta_b in E[[d]]
  seriesEd eb(unsigned b);
  /// element Nabla_n=mu_n.beta_n in E[[d]]
  seriesEd en(unsigned n);
  /// element mu var mu_<seq> in E[[d]] where the sequence is given by a vector
  seriesEd em(const std::vector<unsigned> & seq);
    /// element beta var beta_<seq> in E[[d]] where the sequence is given by a vector
  seriesEd eb(const std::vector<unsigned> & seq);

} // end namespace etvo

#endif // SERIESED_H
