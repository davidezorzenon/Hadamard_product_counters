#include "FactoryPoly.h"
#include "randGen.h"

namespace etvo
{

  FactoryPoly::FactoryPoly(unsigned int nbTerms,int gap,bool fixedOff,const gd & off,int range)
  {
    _nbTerms = nbTerms;
    _offset = off;
    _fixedOffset = fixedOff;
    _range = range;
    _gap = gap;
  }

  FactoryPoly::~FactoryPoly()
  {
  }

  etvo::poly FactoryPoly::create() const
  {
    if (_fixedOffset)
    {
      return  randGen::Rand_poly(_nbTerms, _offset,_gap);
    }
    else
    {
      int g = _offset.getg() + randGen::uni_int(-_range, _range);
      int d = _offset.getd() + randGen::uni_int(-_range, _range);
      return  randGen::Rand_poly(_nbTerms,gd(g,d),_gap);

    }
  }
}
