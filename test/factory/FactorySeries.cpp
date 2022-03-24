#include "FactorySeries.h"
#include "randGen.h"
namespace etvo
{
 
  FactorySeries::FactorySeries(unsigned int nbTerms,
                                const etvo::gd & slopeR,
                                bool fixedSlope,
                                 int gap, bool fixedOff, 
                                const etvo::gd & off, int range, int percentPoly, int percentEps)
  {
    _nbTerms = std::max(2,randGen::uni_int(2, nbTerms));
    _r = slopeR;
    _fixedSlope = fixedSlope;
    _offset = off;
    _fixedOffset = fixedOff;
    _range = range;
    _gap = gap;
	_percentPoly = std::min(std::max(percentPoly, 0), 50);
	_percentEps = std::min(std::max(percentPoly, 0), 50);
  }


  FactorySeries::~FactorySeries()
  {
  }

  etvo::series FactorySeries::create() const
  {
	int rand1_100 = randGen::uni_int(0, 100);
	if (rand1_100 <= _percentEps) return series::Epsilon();

    gd appliedOffset;
    gd appliedSlope;
    if (randGen::uni_int(1, 100) < 15)
    {
      if (!_fixedOffset)
      {
        int g = _offset.getg() + randGen::uni_int(-_range, _range);
        int d = _offset.getd() + randGen::uni_int(-_range, _range);
        appliedOffset = gd(g, d);
      }
      else appliedOffset = _offset;
      return  series( randGen::Rand_poly(_nbTerms, _offset, _gap));
    }
    
    if (!_fixedOffset)
    {
      int g = _offset.getg() + randGen::uni_int(-_range, _range);
      int d = _offset.getd() + randGen::uni_int(-_range, _range);
      appliedOffset = gd(g, d);
    }
    else
      appliedOffset = _offset;
    if (!_fixedSlope)
    {
      int g = randGen::uni_int(1, _r.getg());
      int d = randGen::uni_int(1, _r.getd());
      appliedSlope = gd(g, d);
    }
    else
      appliedSlope = _r;
	if (rand1_100 <= (_percentEps + _percentPoly))
		return  randGen::Rand_poly(_nbTerms, appliedOffset, _gap);
	else
    return randGen::Rand_series(_nbTerms,appliedSlope,appliedOffset,_gap);
  }
}