#pragma once
#include "factoryT.h"
#include "../../etvo/wrapperMMGD/gdWrapper.h"
#include "../../etvo/seriesTg/polyTg.h"

namespace etvo
{
  class FactoryPolyTg :public Factory<polyTg>
  {
  private:
    unsigned int _nbTerms;
    etvo::gd _offset;
    bool _fixedOffset;    
    bool _fixedGain;
    int _range;
    int _gap;
    unsigned int _MB;
	int _percentEps;
  public:
    FactoryPolyTg(unsigned int nbTerms, unsigned int MB,int gap=5,bool fixedGain=true,
      bool fixedOff = true,const etvo::gd & off = gd(0, 0), int range = 0,int percentEps=2);
    
    virtual etvo::polyTg create() const;
  };
}

