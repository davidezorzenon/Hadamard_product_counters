#ifndef POLYTG_H
#define POLYTG_H
#include "Tg.h"
#include "../common/ISterm.h"

#include "../wrapperMMGD/polyWrapper.h"
#include "../wrapperMMGD/matrixWrapper.h"

namespace etvo
{
 class seriesTg;
 /*!
 * \class etvo::polyTg
 *
 * \brief Class for polynomials in the semiring T[[g]].
 *
 * epsilon and top element exist.
 *
 * \author BC LH JT LARIS
 * \version 2.0
 */

class polyTg:public ISterm
{
public:
  /// Epsilon element
  static polyTg Epsilon();
  /// Top element
  static polyTg Top();
  /// neutral element
  static polyTg E();

  /// initialised with Epsilon element
  polyTg();

  ///  initialised with one monomial m
	polyTg(const Tg & m);

  ///  specific initialization : polyTg(true) set to Top, polyTg(false) set to E 
	polyTg(bool TopNotE); //true Top false E
  /// initialization to a polynomial created from a collection of Tg terms w.g^n. 
  /// The initialization leads to a canonical form where Tg terms are sorted 
  polyTg(const std::vector<Tg> & v);

  static polyTg toPolyTg(const poly & p);
  poly toPoly() const;
  //static polyTg toCausal(const polyTg & p);

	polyTg operator+(const polyTg &p) const;
  polyTg oplus(const polyTg &p) const;
  polyTg oplusCD(const polyTg &p) const;
  
  polyTg operator+(const Tg & m)const;
  void add(const Tg & m);

	polyTg operator*(const polyTg & p) const;
	polyTg operator*(const Tg & m) const;
  static polyTg otimes(const Tg & m, const polyTg & p);
  polyTg otimes(const polyTg &p) const;
  polyTg otimesCD(const polyTg &p) const;

	polyTg inf(const polyTg & p) const;
  polyTg infCD(const polyTg & p) const;

	polyTg lfrac(const polyTg & p) const;
  polyTg lfracCD(const polyTg & p) const;
	polyTg lfrac(const Tg & m) const;

	polyTg rfrac(const polyTg & p) const;
  polyTg rfracCD(const polyTg & p) const;
	polyTg rfrac(const Tg & m) const;

	bool operator==(const polyTg &)const;
  bool operator!=(const polyTg &)const;
  bool operator<=(const polyTg &) const;
	bool operator>=(const polyTg & ) const;
  
  polyTg transientStar(int Tmax) const;
  Tg getFirstDif(const polyTg & p) const;

	void canon();
  bool isCanon() const;

	Tg operator[](unsigned idx) const;
	unsigned int size() const;
  
	std::string toString() const;
  std::string toStringAsDeltaVar() const;

  	
	bool isE() const;

  void getMaxGain(unsigned int & mb) const;
  void getLcmGain(unsigned int & mb) const;
  unsigned int getMaxGain() const;
  unsigned int getLcmGain() const;

  unsigned getPeriodicity() const;
  std::vector<Tg> getTerms() const;
	void removeTerm(unsigned idx);

  matrix<poly> getCore(unsigned ratio = 1) const;
  matrix<poly> getCoreMax(unsigned ratio = 1) const;
  static etvo::matrix<poly> getMatN(unsigned size);
  static polyTg coreToPolyTg(const matrix<poly>& core);  

  /// returns the projection of p into the set of causal series in T[[g]] (not reliable yet)
  static polyTg toCausal(const polyTg & s);

  /// used in the creation of POV-Ray script for a polyTg object
  void toPov(graphicPR::PovRay & pov, graphicPR::PovRay::Color c);

private:
  void sort();
  void simplify();
	std::vector<Tg> _poly;
};
std::ostream & operator<<(std::ostream & st,const polyTg & p);
}/// end namespace

#endif // POLYTG_H
