#pragma once
#include "factoryT.h"
#include "../../etvo/seriesTg/seriesTg.h"

namespace etvo
{
  class FactorySeriesTg :public Factory<seriesTg>
  {
  private:
    unsigned int _nbTerms;
    etvo::gd _offset;
    bool _fixedOffset;
    bool _fixedSlope;
    bool _fixedGain;
    etvo::gd _r;
    int _range;
    unsigned int _MB;    
	int _percentPoly;
	int _percentEps;
  public:
   
    FactorySeriesTg(unsigned int nbTerms, unsigned int MB,const etvo::gd & slopeR,
      bool fixedSlope = true, bool fixedGain = true,
      bool fixedOff = true,
      const etvo::gd & off = gd(0, 0), int range = 0,
		int percentPoly = 10, int percentEps = 2);

    virtual etvo::seriesTg create() const;
  };
}
