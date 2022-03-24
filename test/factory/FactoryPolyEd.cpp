#include "FactoryPolyEd.h"
#include "randGen.h"
namespace etvo
{

  FactoryPolyEd::FactoryPolyEd(unsigned int nbTerms, unsigned int M,
                      unsigned int B, int gap, bool fixedGain,bool fixedOff,
                      const etvo::gd & offset, int range, int percentEps)
  {
    _M = M;
    _B = B;
    _nbTerms = nbTerms;
    _fixedGain = fixedGain;
    _fixedOffset = fixedOff;
    _offset = offset;
    _range = range;
    _gap = gap;
	_percentEps = std::min(std::max(percentEps, 0), 50);
  }


  FactoryPolyEd::~FactoryPolyEd()
  {
  }
  etvo::polyEd FactoryPolyEd::create() const
  {    
	int rand1_100 = randGen::uni_int(0, 100);
	if (rand1_100 <= _percentEps) return polyEd::Epsilon();

    unsigned int appliedM=_M, appliedB=_B;
    gd appliedOffset = _offset;
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
    return randGen::Rand_polyEd_fixedG(appliedOffset,appliedM,appliedB, _nbTerms,_gap);
  }


}