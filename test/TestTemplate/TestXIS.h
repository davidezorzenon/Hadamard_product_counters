#ifndef __TEST_XIS__
#define __TEST_XIS__

#include<algorithm>
#include<vector>
#include "../../etvo/common/etvoException.h"
#include "../macros.h"
#include "../Test.h"
namespace test
{
  /*************************************************************************************/
  /*************************************************************************************/
  template <class T>
  class TestXIS {
  public:
    static bool TestAll(const T & a)
    {
      bool success = true;
      try {
        test::TestXIS<T>::Test0();
        test::TestXIS<T>::Test1(a);
      }
      catch (const test::testException & e)
      {
        std::cout << "Exception #" << e.Num();
        std::cout << " Msg :" << e.Message() << std::endl;
        success = false;
      }
      return success;
    }

    static void print(const T & a)
    {
      std::cout << "a=" << a << std::endl;
    }


    static void Test0()
    {

      T eps = T::Epsilon();
      T top = T::Top();
      if (!(eps + eps == eps))
      {
        throw test::testException(500, "eps+eps!=eps");
      }

      if (!(eps * eps == eps))
      {
        throw test::testException(500, "eps*eps!=eps");
      }

      if (!(eps * top == eps))
      {
        throw test::testException(500, "eps*Top!=eps");
      }

      if (!(top*eps == eps))
      {
        throw test::testException(500, "Top*eps!=eps");
      }

      if (!(top*top == top))
      {
        throw test::testException(500, "Top*Top!=Top");
      }

      if (!(top + top == top))
      {
        throw test::testException(500, "Top*Top!=Top");
      }
      if (!(eps + top == top))
      {
        throw test::testException(500, "eps+Top!=Top");
      }

      if (!(top + eps == top))
      {
        throw test::testException(500, "Top+eps!=Top");
      }
    }

    static void Test1(const T & a)
    {
      T eps = T::Epsilon();
      T top = T::Top();
      if (!(a + eps == a))
      {
        PRINT(a);  
        PRINT(a+eps);
        throw test::testException(501, "a+eps!=a");
      }

      if (!(eps + a == a))
      {
        PRINT(eps+a);
        PRINT(a);
        throw test::testException(502, "eps+a!=a");
      }

      if (!(a * eps == eps))
      {
        PRINT(a*eps);
        PRINT(eps);
        throw test::testException(503, "a*eps!=eps");
      }

      if (!(eps * a == eps))
      {
        PRINT(eps*a);
        PRINT(a);
        throw test::testException(504, "eps*a!=eps");
      }

      if (!((a + top) == top))
      {
        PRINT(a+top);
        PRINT(a);
        throw test::testException(505, "a+top!=top");
      }

      if (!((top + a) == top))
      {
        PRINT((top + a));
        PRINT(a);
        throw test::testException(506, "top+a!=top");
      }

      if (!(a==eps) && !(a * top == top))
      {
        PRINT(a);
        throw test::testException(507, "a*top!=top");
      }

      if (!(a == eps) && !(top*a == top))
      {
        PRINT(a);
        throw test::testException(508, "top*a!=top");
      }
    }
  };
}
#endif
