#include "FactoryPolyTg.h"
#include "randGen.h"
namespace etvo
{
  FactoryPolyTg::FactoryPolyTg(unsigned int nbTerms, unsigned int MB, int gap, bool fixedGain,
    bool fixedOff, const etvo::gd & off, int range,int percentEps)
  {
    _MB = MB;
    _nbTerms = nbTerms;
    _fixedGain = fixedGain;
    _fixedOffset = fixedOff;
    _offset = off;
    _range = range;
    _gap = gap;
	_percentEps = std::min(std::max(percentEps, 0), 50);
  }
     
  etvo::polyTg FactoryPolyTg::create() const
  {
	  int rand1_100 = randGen::uni_int(0, 100);
	  if (rand1_100 <= _percentEps) return polyTg::Epsilon();
    unsigned int appliedMB = _MB;
    gd appliedOffset = _offset;
    if (!_fixedGain)
    {
      appliedMB = randGen::uni_int(1, _MB);      
    }
    if (!_fixedOffset)
    {
      int g = _offset.getg() + randGen::uni_int(-_range, _range);
      int d = _offset.getd() + randGen::uni_int(-_range, _range);
      appliedOffset = gd(g, d);
    }
    
    //return randGen::Rand_polyTg_fixedG(appliedMB,_nbTerms,_gap);
    return randGen::Rand_polyTg_fixedG(appliedOffset, appliedMB, _nbTerms, _gap);
  }
}