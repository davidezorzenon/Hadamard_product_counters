#ifndef __FACTORYT__
#define __FACTORYT__


#include<vector>


namespace etvo
{
  /*************************************************************************************/
  /*************************************************************************************/
  template <class T>
  class Factory {
  public:
    virtual T create() const = 0;
    virtual std::vector<T> createN(unsigned int n) const
    {
      std::vector<T> vec(n);
      for (unsigned int i = 0; i < n; i++)
      {
        vec[i] = create();
      }
      return vec;
    }
  };

  }
#endif