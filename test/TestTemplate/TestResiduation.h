#pragma once


#include<algorithm>
#include<vector>
#include "../../etvo/common/etvoException.h"
#include "../testException.h"
#include "../macros.h"
#include "../Test.h"
#include<iostream>

namespace test
{
  /*************************************************************************************/
  /*************************************************************************************/
  template <class T>
  class TestResiduation {
  public:

    /// a,b same Gain 
    static bool TestAll(const T & a, const T& b, const T& c,const T& d)
    {

      bool success = true;
      try {
        test::TestResiduation<T>::Test1(a,b,c);
        test::TestResiduation<T>::Test1b(a, b, c);
        test::TestResiduation<T>::Test2346(a,c,d);        
        //test::TestResiduation<T>::Test78(a);     -> moved to TestKleene    
      }
      catch (const test::testException & e)
      {
        std::cout << "Error in TestResiduation!" << std::endl;
        std::cout << "Exception :" << e.Message() << std::endl;
        success = false;
      }
      catch (const etvo::etvoException & e2)
      {
        std::cout << "Error in TestResiduation!" << std::endl;
        std::cout << "Exception :" << e2.Message() << std::endl;
        success = false;
      }
      catch (const std::exception & ex)
      {
        std::cout << "Error in TestResiduation!" << std::endl;
        std::cout << "Exception :" << ex.what() << std::endl;
        success = false;
      }
      return success;
    }
	   

    static void  Test1(const T & a, const T& b, const T & c)
    {
      T tmpAplusB = a + b;
      T x = c.lfrac(tmpAplusB);
      T y = (c.lfrac(a)).inf(c.lfrac(b));

      if (!(x == y))
      {
		std::cout << "Error in TestResiduation::Test1" << std::endl;
		
			PRINT(x);
			PRINT(y);
			PRINT(a);
			PRINT(b);
			PRINT(c);
			throw test::testException(201, "Test1a");
		
      }

      x = c.rfrac(tmpAplusB);
      y = (c.rfrac(a)).inf(c.rfrac(b));
      if (!(x == y))
      {
        std::cout << "Error in TestResiduation::Test1" << std::endl;
		
			PRINT(x);
			PRINT(y);
			PRINT(a);
			PRINT(b);
			PRINT(c);
			throw testException(201, "Test1b");
		
      }
    }
    
    static void  Test1b(const T & a, const T & b, const T& c)
    {
      T tmpAinfB = a.inf(b);
      T x = (tmpAinfB).lfrac(c);
      T y = (a.lfrac(c)).inf(b.lfrac(c));

      if (!(x == y))
      {
        std::cout << "Error in TestResiduation::Test1b" << std::endl;
		
			PRINT(x);
			PRINT(y);
			PRINT(a);
			PRINT(b);
			PRINT(c);
			throw testException(205, "Test1b_a");
		
      }

      x = (tmpAinfB).rfrac(c);
      y = (a.rfrac(c)).inf(b.rfrac(c));

      if (!(x == y))
      {
        std::cout << "Error in TestResiduation::Test1b" << std::endl;
		
			PRINT(x);
			PRINT(y);
			PRINT(a);
			PRINT(b);
			PRINT(c);
			throw testException(205, "Test1b_b");
		
      }
    }

    static void  Test2346(const T & a, const T& c, const T & d)
    {
      T clfa = c.lfrac(a);
      T crfa = c.rfrac(a);
      T x, y;

      x = clfa.rfrac(d);
      y = (c.rfrac(d)).lfrac(a);

      if (!(x == y))
      {
        std::cout << "Error in TestResiduation::Test2346" << std::endl;
		{
			PRINT(x);
			PRINT(y);
			PRINT(a);
			PRINT(c);
			PRINT(d);
			throw testException(202, "Test2a");
		}
      }    
     
      x = c.lfrac(a*d);
      y = clfa.lfrac(d);

      if (!(x == y))
      {
        std::cout << "Error in TestResiduation::Test2346" << std::endl;		
		{
			PRINT(x);
			PRINT(y);
			PRINT(a);
			PRINT(c);
			PRINT(d);
			throw testException(206, "Test6a");
		}
      }

      x = c.rfrac(d*a);
      y = crfa.rfrac(d);

      if (!(x == y))
      {
        std::cout << "Error in TestResiduation::Test2346" << std::endl;
		
		{
			PRINT(x);
			PRINT(y);
			PRINT(a);
			PRINT(c);
			PRINT(d);
			throw testException(206, "Test6b");
		}
      }

      T ac = a * c;
      T ca = c*a;
            
      y = a * (ac.lfrac(a));

      if (!(ac == y))
      {
        std::cout << "Error in TestResiduation::Test2346" << std::endl;
		
		{
			PRINT(ac);
			PRINT(y);
			throw testException(203, "Test3a");
		}
      }

      y = (ca.rfrac(a))*a;

      if (!(ca == y))
      {
        std::cout << "Error in TestResiduation::Test2346" << std::endl;
		
		{
			PRINT(ca);
			PRINT(y);
			throw testException(203, "Test3b");
		}
      }

      y = (a * clfa).lfrac(a);

      if (!(clfa == y))
      {
        std::cout << "Error in TestResiduation::Test2346" << std::endl;
		
		{
			PRINT(clfa);
			PRINT(y);
			throw testException(204, "Test4a");
		}
      }
            
      y = (crfa*a).rfrac(a);

      if (!(crfa == y))
      {
        std::cout << "Error in TestResiduation::Test2346" << std::endl;
		
		{
			PRINT(crfa);
			PRINT(y);
			throw testException(204, "Test4b");
		}
      }      
    }   

  };

}
