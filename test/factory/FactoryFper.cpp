#include "FactoryFper.h"
#include "randGen.h"

namespace etvo
{
FactoryFper::FactoryFper(int d, int cod,int Y0,int rangeY0,
                          bool fixedG,bool fixedY0)
{
  _dp = d;
  _codp = cod;
  _y0 = Y0;
  _rangeY0 = rangeY0;
  _fixedG = fixedG;  
  _fixedY0 = fixedY0;
}

FactoryFper::~FactoryFper()
{
}

etvo::Fper FactoryFper::create() const
{
  if (_fixedG)
  {
    if (_fixedY0)
      return randGen::Rand_Fper_fixedPer_and_Y0(_y0, _dp, _codp);
  else
    {
      int deltaY0 = randGen::uni_int(-_rangeY0, _rangeY0);
      return randGen::Rand_Fper_fixedPer_and_Y0(_y0 + deltaY0, _dp, _codp);
    }
  }
  else
  {
    int d = randGen::uni_int(1, _dp);
    int cd = randGen::uni_int(1, _codp);
    if (_fixedY0)
      return randGen::Rand_Fper_fixedPer_and_Y0(_y0, d, cd);
    else
    {
      int deltaY0= randGen::uni_int(-_rangeY0, _rangeY0);
      return randGen::Rand_Fper_fixedPer_and_Y0(_y0+deltaY0, d, cd);
    }
  }
}

}