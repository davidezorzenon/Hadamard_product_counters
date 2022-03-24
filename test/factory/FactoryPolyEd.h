#pragma once
#include "factoryT.h"
#include "../../etvo/seriesEd/polyEd.h"

namespace etvo
{
  class FactoryPolyEd:public Factory<polyEd>
  {
  private:
    unsigned int _nbTerms;
    etvo::gd _offset;
    bool _fixedOffset;
    bool _fixedGain;
    int _range;
    int _gap;
    unsigned int _M, _B;
	int _percentEps;
  public:
    FactoryPolyEd(unsigned int nbTerms,unsigned int M,
                  unsigned int B, int gap=5, bool fixedGain=true,
                  bool fixedOff = true, 
                  const etvo::gd & off = gd(0, 0), int range = 0,
					int percentEps = 2);
    ~FactoryPolyEd();

    virtual etvo::polyEd create() const;
  
  };
}

