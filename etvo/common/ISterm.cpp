#include "ISterm.h"
#include<algorithm>
 
namespace etvo
{
  ISterm::ISterm(bool isEps)
  {
    if (isEps) _epsNTop = -1;  //epsilon
    else _epsNTop = 0;   // NoXtreme = neither eps nor Top
  }

  ISterm::ISterm(int epsNTop) //eps=-1 NoXtreme=0 T=+1
  {
    _epsNTop = (char)std::max(std::min(1, (int)epsNTop), -1);
  }
  
  bool ISterm::isEpsilon() const
  {
    return _epsNTop == -1;
  }
  bool ISterm::isTop() const
  {
    return _epsNTop == 1;
  }

  bool ISterm::isExtreme() const
  {
    return _epsNTop != 0;
  }

  void ISterm::setEpsilon()
  {
    _epsNTop = -1;
  }
  void ISterm::setTop()
  {
    _epsNTop = +1;
  }
  
  bool ISterm::operator==(const ISterm & ist) const
  {
    return _epsNTop == ist._epsNTop;
  }

}