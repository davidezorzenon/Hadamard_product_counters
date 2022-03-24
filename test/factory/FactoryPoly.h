#pragma once
#include "factoryT.h"
#include "../../etvo/wrapperMMGD/polyWrapper.h"

namespace etvo
{
  class FactoryPoly :public Factory<etvo::poly>
  {
  private:
    unsigned int _nbTerms;
    etvo::gd _offset;
    bool _fixedOffset;
    int _range;
    int _gap;
  public:
    FactoryPoly(unsigned int nbTerms,int gap=5,bool fixedOff=true,const etvo::gd & off=gd(0,0),int range=0);
    ~FactoryPoly();

    virtual etvo::poly create() const;
  };

}
