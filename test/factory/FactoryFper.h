#pragma once
#include "factoryT.h"
#include "../../etvo/Fper/Fper.h"
namespace etvo
{
  class FactoryFper :public Factory<Fper>
  {
  private:
    int _dp, _codp;
    int _y0;
    int _rangeY0;
    bool _fixedG;
    bool _fixedY0;
  public:
    FactoryFper(int d,int cod,int Y0,int rangeY0,bool fixedG=true,bool fixedY0=true);
    ~FactoryFper();

    
    virtual Fper create() const;
  };
}
