#ifndef SERIESTG_H
#define SERIESTG_H
#include "polyTg.h"
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
 * \class etvo::seriesTg
 *
 * \brief Class for ultimately-periodic series in the semiring T[[g]]. 
 *
 * \author BC LH JT LARIS
 * \version 2.0
 */
  class seriesTg:public ISterm
  {
  private:
    bool _droite;  // true if right-form
    polyTg _p;     // _p polynomial
    polyTg _q;     // _q polynomial
    long _gamma;  // exponent of gn in p+q.[gn.dtr]*  or in p+[gn.dt]*.q
    long _deltaL;  // exponent of dt in p+[gn.dtl]*.q 
    long _deltaR;  // exponent of dt in p+q.[gn.dtr]*
    
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
	static long getDominationEventLH(const seriesTg & slow, const seriesTg & fast);
   // static seriesTg star(const etvo::series & s, unsigned nablaM, int gK);

   // internal usefull function to compute a part of the coreToSeriesTg function
	static seriesTg coreEntryToSeriesTg(int i, int j, int mb, const series & s);

  public:
    /// The epsilon description of seriesTg
    static seriesTg Epsilon();
	/// The Top description of seriesTg
    static seriesTg Top();
	/// The description of g0.d0 as seriesTg
    static seriesTg E();
        
    /// Default initialization : epsilon  (p=eps q=eps r=g1.d0)
    seriesTg();

    /// Initialization as Top (true) OR E(false) 
	/// Top (p=T q=T r=g1.d0)
	/// E (p=eps q=g0.d0 r=g1.d0)
    seriesTg(bool TopNotE);

	/// Initialization of a seriesTg from Tg term m (p=eps q=m r=g1.d0)	
	seriesTg(const Tg & m);

	/// Initialization of a seriesTg from polyTg term q (p=eps q=q r=g1.d0)	
	seriesTg(const polyTg & q);
	
    /// Initialization of a seriesTg from periodic p,q,r (right/left) form
	/// if right=true ->  s=p+q.[gn.dt]*
	/// otherwise ->  s=p+[gn.dt]*.q
  seriesTg(const polyTg & p,const polyTg & q, long n, long t, bool right = true);
	/// Initialization of a seriesTg from periodic p,q,r (right/left) form
	/// if right=true ->  s=p+q.[r]*
	/// otherwise ->  s=p+[r]*.q
  seriesTg(const polyTg & p, const polyTg & q, const gd & r,bool right = 1);
       
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
    polyTg getP() const;
	/// getter returning q
    polyTg getQ() const;
	/// getter returning r
    gd getR() const;
       
    /// returns the string description of a series in E[[d]]. This format is compatible
    /// with the parser of seriesEd (needs boost installation)
    std::string toString() const;
    /// returns the string description of a series in E[[d]] with mu<seq> operators. This format is compatible
    /// with the parser of seriesEd (needs boost installation)
    std::string toStringAsDeltaVar() const;

    /// check equality
    bool operator==(const seriesTg & s) const;
    /// check difference
    bool operator!=(const seriesTg &)const;
	/// check order on series
	bool operator<=(const seriesTg &) const;
	/// check order on series
	bool operator>=(const seriesTg &) const;



    /// static function to develop the first terms of p+q.[r]* or p+[r]*.q up to a given gammaN value
    static polyTg getPolyUpTo(int gammaN, const polyTg & p, const polyTg & q, const gd & r, bool droite = true);

    /// returns the Least Common multiple of gains in the terms of the current series
    unsigned int getLcmGain() const;
    /// returns the Maximum of gains in the terms of the current series
    unsigned int getMaxGain() const;
    
	/// sum of series in T[[g]]  : s1+s2  (calls oplus) 	
	seriesTg operator+(const seriesTg & s) const;
	/// sum of series in T[[g]] : s1.oplus(s2) 	
	seriesTg oplus(const seriesTg & s) const;
	/// sum of series and polynomial in T[[g]] : s1.oplus(p1)	
	seriesTg oplus(const polyTg & p) const;

	/// product of series in T[[g]] : s1.otimes(s2)
	seriesTg otimes(const seriesTg & s) const;

	/// [STATIC] product of a monomial and a series in T[[g]] : seriesTg::otimes(m,s)	
	static seriesTg otimes(const Tg & m, const seriesTg & s);
	/// [STATIC] product of a polynomial and a series in T[[g]] : seriesTg::otimes(p,s)
	static seriesTg otimes(const polyTg & m, const seriesTg & s);

	/// product of series in T[[g]]  : s1*s2
	seriesTg operator*(const seriesTg  & s) const;
	/// product of a series by a monomial in T[[g]]  : s1*m
	seriesTg operator*(const Tg  & m) const;
	/// product of a series by a polynomial in T[[g]]  : s1*p
	seriesTg operator*(const polyTg  & p) const;

	/// product of a series by a monomial in T[[g]] : s1.otimes(m)
	seriesTg otimes(const Tg & m) const;
	/// product of a series by a polynomial in T[[g]] : s1.otimes(p)
	seriesTg otimes(const polyTg & p) const;

	/// [STATIC] sum of a polynomial and a series in T[[g]] : seriesTg::oplus(p,s)	
	static seriesTg oplus(const polyTg & p, const seriesTg & s);


	/// injection series(mmgd)->seriesEd
	static seriesTg toSeriesTg(const series & s);

	/// returns the Core matrix of the current series.
	/// A ratio!=1 allows us to expand the matrix to a multiple of the basic gain.
	etvo::matrix<series>  getCore(unsigned ratio = 1) const;
	/// returns the maximal Core matrix of the current series.
	/// A ratio!=1 allows us to expand the matrix to a multiple of the basic gain.
	etvo::matrix<series>  getCoreMax(unsigned ratio = 1) const;

	static etvo::matrix<series>  getMatN(unsigned size);
	/// returns the Kleene star of a series in T[[g]]. Operates via a
	/// Core Decomposition of the series (see J.Trunk thesis)
	seriesTg starCD() const;
	/// returns the Kleene star of a series in T[[g]]. Operates via a
	/// Core Decomposition of the series (see J.Trunk thesis)
	/// Throws an exception if the computation is not handled yet (degenerate case)
	seriesTg star() const;

	/// [static] conversion CORE decomposition ->  seriesEd
	static seriesTg coreToSeriesTg(const matrix<series> & C);
	
	/// operations via Core Decomposition : otimes
	seriesTg otimesCD(const seriesTg & s) const;
	/// operations via Core Decomposition : oplus
	seriesTg oplusCD(const seriesTg & s) const;

	/// operations via Core Decomposition : inf
	seriesTg infCD(const seriesTg & s) const;
	/// inf of series
	seriesTg inf(const seriesTg & s) const;
	/// operations via Core Decomposition : lfrac
	seriesTg lfracCD(const seriesTg & s) const;
	/// operations via Core Decomposition : rfrac
	seriesTg rfracCD(const seriesTg & s) const;
	/// left-product residuation : s1.lfrac(s2) = s2\s1 
	seriesTg lfrac(const seriesTg & s) const;
	/// right-product residuation : s1.rfrac(s2) = s1/s2 
	seriesTg rfrac(const seriesTg & s) const;

	/// method to develop the first terms of p+q.[r]* or p+[r]*.q up to a given gammaN event value
	polyTg getPolyUpTo(int gammaN) const;

	/// returns the projection of s into the set of causal series in T[[g]] (not reliable yet)
	static seriesTg toCausal(const seriesTg & s);

	/// returns the response to I,g1.I,g2.I ...
	std::vector<series> toImpulseResponse() const;

	/// projection seriesTg->series (zero slice)
	series toSeries() const;

    /*		
	/// check order on series
    bool operator<=(const seriesEd &) const;
	/// check order on series
    bool operator>=(const seriesEd &) const;
    */
  };

  std::ostream & operator<<(std::ostream & f, const seriesTg & s);


  // necessary for matrix<T> computations.
  seriesTg star(const seriesTg & s);
  seriesTg oplus(const seriesTg &, const seriesTg &);
  seriesTg inf(const seriesTg &, const seriesTg &);
  seriesTg otimes(const seriesTg &, const seriesTg &);
  seriesTg lfrac(const seriesTg &, const seriesTg &);
  seriesTg rfrac(const seriesTg &, const seriesTg &);

  /// element g^n in T[[g]]
  seriesTg tg(int n);
  /// element d^t in T[[g]]
  seriesTg td(int t);
  /// element Delta_n  T[[g]]
  seriesTg tD(unsigned n);
  /// element delta var delta^<seq> in T[[g]] where the sequence is given by a vector
  seriesTg td(const std::vector<int> & seqDelays);
} // end namespace etvo

#endif // SERIESED_H
