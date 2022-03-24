#pragma once
#include "factoryT.h"
#include "../../etvo/wrapperMMGD/seriesWrapper.h"

/*!
* \file  FactorySeries.h
*
* /

/*! \namespace etvo
* namespace for ETVO classes
*/

namespace etvo
{
	/*!
  * \class etvo::FactorySeries
  *
  * \brief Class for series generators
  *
  * \author BC LARIS
  * \version 2.0
  */
  class FactorySeries :public Factory<etvo::series>
  {
  private:
    unsigned int _nbTerms;
    etvo::gd _offset;
    bool _fixedOffset;
    bool _fixedSlope;
    etvo::gd _r;
    int _range;
    int _gap;	
	int _percentPoly;
	int _percentEps;
  public:

	  /*!
		  * \brief Constructor for the factory 
		  *
		  * \param nbTerms : induce the number of monomials
		  * \param slopeR : set the asymptotic slope
		  * \param fixedSlope : if true, slopeR is the slope
		  * \param gap : jump between elements
		  * \param fixedOff : set if the given offset is fixed or not
		  * \param off : offset (first monomial)
		  * \range : if offset is not fixed, the range of the variation
	  */
    FactorySeries(unsigned int nbTerms, 
                  const etvo::gd & slopeR,
                  bool fixedSlope = true,
                  int gap = 5, bool fixedOff = true, 
                  const etvo::gd & off = gd(0, 0), 
                  int range = 0,
				  int percentePoly=10,int percentEps=2);

    virtual etvo::series create() const;

   ~FactorySeries();
  };
}
