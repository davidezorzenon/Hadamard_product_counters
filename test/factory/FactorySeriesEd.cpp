#include "FactorySeriesEd.h"
#include "FactoryPolyEd.h"
#include "randGen.h"

namespace etvo
{

  FactorySeriesEd::FactorySeriesEd(unsigned int nbTerms, unsigned int M,
    unsigned int B, const etvo::gd & slopeR,
    bool fixedSlope, bool fixedGain,
    bool fixedOff,const etvo::gd & off, int range,
	  int percentPoly, int percentEps)
  {
    _nbTerms = std::max(1, randGen::uni_int(1, nbTerms));
    _M = M; _B = B;
    _r = slopeR;
    _fixedSlope = fixedSlope;
    _fixedGain = fixedGain;
    _fixedOffset = fixedOff;
    _offset = off;
    _range = range;
	_percentPoly = std::min(std::max(percentPoly,0),50);
	_percentEps = std::min(std::max(percentEps, 0),50);
  }
    
  etvo::seriesEd FactorySeriesEd::create() const
  {	
    gd appliedOffset=_offset;
    gd appliedSlope=_r;
    unsigned int appliedM = _M, appliedB = _B;
	int rand1_100 = randGen::uni_int(0, 100);
	if (rand1_100 <= _percentEps) return seriesEd::Epsilon();
	
    if (!_fixedGain)
    {
      appliedM = randGen::uni_int(1, _M);
      appliedB = randGen::uni_int(1, _B);
    }
    if (!_fixedOffset)
    {
      int g = _offset.getg() + randGen::uni_int(-_range, _range);
      int d = _offset.getd() + randGen::uni_int(-_range, _range);
      appliedOffset = gd(g, d);
    }
    
    if (!_fixedSlope)
    {
      int g = randGen::uni_int(1, _r.getg());
      int d = randGen::uni_int(1, _r.getd());
      appliedSlope = gd(g, d);
    }
	if (rand1_100 <= (_percentEps + _percentPoly))
		return randGen::Rand_polyEd_fixedG(appliedOffset, appliedM, appliedB, _nbTerms, 5);	
	else return  randGen::Rand_seriesEd_fixedG_fixedSlope(appliedM, appliedB, appliedSlope, _nbTerms, appliedOffset);
   }
}
