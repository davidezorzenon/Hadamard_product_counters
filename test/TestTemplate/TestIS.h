#ifndef __TEST_IS__
#define __TEST_IS__

#include<algorithm>
#include<vector>
#include "../testException.h"
#include "../../etvo/common/etvoException.h"

#include "../macros.h"
#include "../Test.h"
namespace test
{
  /*************************************************************************************/
  /*************************************************************************************/
  template <class T>
  class TestIS {
  public:
    static bool TestAll(const T & a,const T& b, const T & c)
    {
      bool success = true;
      try {       
            test::TestIS<T>::Test1(a, b);
            test::TestIS<T>::Test2(c, a, b);
            test::TestIS<T>::Test3(a, b);
          }              
      catch (const test::testException & e)
      {
        std::cout << "Error in TestIS!"<< std::endl;
        std::cout << "Num :" << e.Num() << std::endl;
        std::cout << "Exception :" << e.Message() << std::endl;
        success = false;
      }
      catch (const etvo::etvoException & e2)
      {
        std::cout << "Error in TestIS!" << std::endl;
        std::cout << "Num :" << e2.Num() << std::endl;
        std::cout << "Exception :" << e2.Message()<< std::endl;
        success = false;
      }
      catch (const std::exception & ex)
      {
        std::cout << "Error in TestIS!" << std::endl;
        std::cout << "Exception :" << ex.what() << std::endl;
        success = false;
      }
      return success;
    }   

    static void print(const T & a, const T& b)
    {
      PRINT(a);
      PRINT(b);     
    }

    static void print(const T & a, const T& b,const T& c)
    {
      PRINT(a);
      PRINT(b);
      PRINT(c);
    }   

    
    static void  Test3(const T & a, const T& b)
    {
      T r1 = a.inf(b);
      T r2 = b.inf(a);      
      if (!(r1==r2))
      {
        std::cout << "Error in TestIS::Test3" << std::endl;		
        PRINT(r1);
        PRINT(r2);
        PRINT(a);
        PRINT(b);        
        throw test::testException(20, "a^b!=b^a");
      }
    }
    
    static void  Test2(const T & a, const T& b, const T& c)
    {
      T tmp1 = b + c;
      T r1 = a * tmp1;
      T tmp2 = a * b;
      T r2 = tmp2 + (a*c);
      T r3 = (tmp1)*a;
      T r4 = (b*a) + (c*a);
      T r5 = (tmp2)*c;
      T r6 = a * (b*c);

      if (!(r1 == r2))
      {
        std::cout << "Error in TestIS::Test2" << std::endl;
		PRINT(r1);
		PRINT(r2);
		print(a, b, c);
		throw test::testException(20, "a*(b+c)!=ab + ac");
      }

      if (!(r3 == r4))
      {
        std::cout << "Error in TestIS::Test2" << std::endl;
		PRINT(r3);
        PRINT(r4);
        print(r3, r4);
        print(a, b, c);
        throw test::testException(20, "(b+c)*a!=ba + ca");
      }

      if (!(r5 == r6))
      {
        std::cout << "Error in TestIS::Test2" << std::endl;
		PRINT(r5);
        PRINT(r6);
        print(a, b, c);
        throw test::testException(20, "(a*b)*c!=a*(b*c)");
      }
    }
    

    static void Test1(const T & a, const T& b)
    {
      T r1 = a + b;
      T r2 = b + a;
      if (!(r1 == r2))
      {   
        std::cout << "Error in TestIS::Test1" << std::endl;
		PRINT(r1);
        PRINT(r2);
        print(a, b);
        throw test::testException(20, "a+b!=b + a");
      }   
    }
  };
  }
#endif