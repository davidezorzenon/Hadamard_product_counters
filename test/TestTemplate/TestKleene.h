#pragma once

#include<algorithm>
#include<vector>
#include "../../etvo/common/etvoException.h"
#include "../testException.h"
#include "../macros.h"
#include<iostream>

namespace test
{
  /*************************************************************************************/
  /*************************************************************************************/
  template <class T>
  class TestKleene {
  public:

    /// a Gain 1, b Gain free
    static bool TestAll(const T & a,const T& b)
    {

      bool success = true;
      try {
        test::TestKleene<T>::Test1(a);
        test::TestKleene<T>::Test2(b);
        
      }
      catch (const test::testException & e)
      {
        std::cout << "Error in TestKleene!" << std::endl;
        std::cout << "Exception :" << e.Message() << std::endl;
        success = false;
      }
      catch (const etvo::etvoException & e2)
      {
        std::cout << "Error in TestKleene!" << std::endl;
        std::cout << "Exception :" << e2.Message() << std::endl;
        success = false;
      }
      catch (const std::exception  & ex)
      {
        std::cout << "Error in TestKleene!" << std::endl;
        std::cout << "Exception :" << ex.what() << std::endl;
        success = false;
      }
      return success;
    }

    static void print(const T & a)
    {
      PRINT(a);      
    }
        
    static void  Test1(const T & a)
    {
      T stara = a.star();
      T x = stara*stara;
      T y = stara.lfrac(stara);
      T z = stara.rfrac(stara);
      
      if (!(x == stara))
      {
        print(stara);
        print(x);
        throw test::testException(201, "Test1a");
      }

      if (!(y==stara))
      {
        print(stara);
        print(y);
        throw testException(201, "Test1b");
      }

      if (!(z == stara))
      {
        print(stara);
        print(z);
        throw testException(201, "Test1c");
      }
    }

    
    static void  Test2(const T & a)
    {
      T alfa = a.lfrac(a);
      T arfa = a.rfrac(a);
      T x = a * alfa;
      T y = arfa*a;


      if (!(x == a)){
        print(a);
        throw testException(205, "Test2a");      
      }

      if (!(y == a)){
        print(a);
        throw testException(205, "Test2b");
      }

      x = alfa.star();
      y = arfa.star();
      
      if (!(x == alfa)){
        print(a);
        throw testException(205, "Test2c");
      }

      if (!(y == arfa)){
        print(a);
        throw testException(205, "Test2d");
      }
    }   

  };

}
