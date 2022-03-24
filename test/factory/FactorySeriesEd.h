#pragma once
#include "factoryT.h"
#include "../../etvo/seriesEd/seriesEd.h"

namespace etvo
{
  class FactorySeriesEd :public Factory<seriesEd>
  {
  private:
    unsigned int _nbTerms;
    etvo::gd _offset;
    bool _fixedOffset;
    bool _fixedSlope;
    bool _fixedGain;
    etvo::gd _r;
    int _range;
    unsigned int _M, _B;    
	int _percentPoly;
	int _percentEps;
  public:
   
    FactorySeriesEd(unsigned int nbTerms, unsigned int M,
      unsigned int B, const etvo::gd & slopeR,
      bool fixedSlope = true, bool fixedGain = true,
      bool fixedOff = true,
      const etvo::gd & off = gd(0, 0), int range = 0,
	  int percentPoly=10,int percentEps=2);

    virtual etvo::seriesEd create() const;
  };
}
