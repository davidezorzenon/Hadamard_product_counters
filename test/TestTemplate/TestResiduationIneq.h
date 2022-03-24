#pragma once


#include<algorithm>
#include<vector>
#include "../../etvo/common/etvoException.h"
#include "../testException.h"
#include "../macros.h"
#include "../Test.h"

namespace test
{
  /*************************************************************************************/
  /*************************************************************************************/
  template <class T>
  class TestResiduationIneq{
  public:

    static bool TestAll(const T & a,const T& b, const T& c,const T& d)
    {
      bool success = true;
      try {           
            test::TestResiduationIneq<T>::Test1(b, c);
            test::TestResiduationIneq<T>::Test23(a,b, c);
            test::TestResiduationIneq<T>::Test45(a,b,c,d);                        
      }
      catch (const test::testException & e)
      {
        std::cout << "Error in TestResiduationIneq!" << std::endl;
        std::cout << "Exception :" << e.Message() << std::endl;
        success = false;
      }
      catch (const etvo::etvoException & e2)
      {
        std::cout << "Error in TestResiduationIneq!" << std::endl;
        std::cout << "Exception :" << e2.Message() << std::endl;
        success = false;
      }
      catch (const std::exception & ex)
      {
        std::cout << "Error in TestResiduationIneq!" << std::endl;
        std::cout << "Exception :" << ex.what() << std::endl;
        success = false;
      }
      return success;
    }
	      

    static void  Test1(const T & a, const T& b)
    {
      T x = (a*b).lfrac(a);
      if (!(b <= x))
      {
        std::cout << "Error in TestResiduationIneq::Test1" << std::endl;
		
		{
			PRINT(b);
			PRINT(x);
			PRINT(a);
			throw testException(302, "Test1a");
		}
      }

      x = (b*a).rfrac(a);
      if (!(b <= x))

      {
        std::cout << "Error in TestResiduationIneq::Test1" << std::endl;
		
		{
			PRINT(b);
			PRINT(x);
			PRINT(a);
			throw testException(302, "Test1b ");
		}
      }
    }

    static void  Test23(const T & a, const T& b, const T&c)
    {
      T blfc = b.lfrac(c);
      T brfc = b.rfrac(c);
      
      T x = c * blfc;

      if (!(x <= b))
      {
        std::cout << "Error in TestResiduationIneq::Test23" << std::endl;
		
		{
			PRINT(x);
			PRINT(b);
			PRINT(a);
			PRINT(c);
			throw testException(301, "Test2a");
		}
      }

      x = brfc*c;
      if (!(x <= b))
      {
        std::cout << "Error in TestResiduationIneq::Test23" << std::endl;
		
		{
			PRINT(x);
			PRINT(b);
			PRINT(a);
			PRINT(c);
			throw testException(301, "Test2b ");
		}
      }

      T aplusb = a + b;
      x = aplusb.lfrac(c);
      T y = a.lfrac(c) + b.lfrac(c);

      if (!(y <= x))
      {
        std::cout << "Error in TestResiduationIneq::Test23" << std::endl;
		
		{
			PRINT(y);
			PRINT(x);
			PRINT(a);
			PRINT(b);
			PRINT(c);
			throw testException(303, "Test3a");
		}
      }

      x = aplusb.rfrac(c);
      y = a.rfrac(c) + b.rfrac(c);
      if (!(y <= x))
      {
        std::cout << "Error in TestResiduationIneq::Test23" << std::endl;
		
		{
			PRINT(y);
			PRINT(x);
			PRINT(a);
			PRINT(b);
			PRINT(c);
			throw testException(303, "Test3b ");
		}
      }
    }

    static void  Test45(const T&a,const T & b, const T& c, const T& d)
    {
      T ainfb = a.inf(b);
      T x = c.lfrac(ainfb);
      T clfb = c.lfrac(b);
      T crfb = c.rfrac(b);

      T y = c.lfrac(a) + clfb;

      if (!(y <= x))
      {
        std::cout << "Error in TestResiduationIneq::Test45" << std::endl;
		
		{
			PRINT(y);
			PRINT(x);
			PRINT(a);
			PRINT(b);
			PRINT(c);
			PRINT(d);
			throw testException(304, "Test4a");
		}
      }

      x = c.rfrac(ainfb);
      y = c.rfrac(a) + crfb;

      if (!(y <= x))
      {
        std::cout << "Error in TestResiduationIneq::Test45" << std::endl;
		
		{
			PRINT(y);
			PRINT(x);
			PRINT(a);
			PRINT(b);
			PRINT(c);
			PRINT(d);
			throw testException(304, "Test4b ");
		}
      }        
      x = clfb*d;
      y = (c*d).lfrac(b);

      if (!(x <= y))
      {
        std::cout << "Error in TestResiduationIneq::Test45" << std::endl;
		
		{
			PRINT(x);
			PRINT(y);
			PRINT(a);
			PRINT(b);
			PRINT(c);
			PRINT(d);
			throw testException(305, "Test5a");
		}
      }

      x = d*crfb;
      y = (d*c).rfrac(b);

      if (!(x <= y))
      {
        std::cout << "Error in TestResiduationIneq::Test45" << std::endl;
		
		{
			PRINT(x);
			PRINT(y);
			PRINT(a);
			PRINT(b);
			PRINT(c);
			PRINT(d);
			throw testException(305, "Test5b ");
		}
      }
    }
  };

}
