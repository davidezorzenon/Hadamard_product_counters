#include <iostream>
#include <exception>

#include "etvo.h"
#include "test/Test.h"
#include "parsers/parser.h"
#include "etvo/common/global.h"
#include "test/factory/FactoryFper.h"
#include "test/factory/FactoryPoly.h"
#include "test/factory/FactorySeries.h"
#include "test/factory/FactoryPolyEd.h"
#include "test/factory/FactoryPolyTg.h"
#include "test/factory/FactorySeriesEd.h"

using namespace std;
using namespace etvo;
using namespace test;

int main()
{ 
  global::NB_ITER = 1;
  try
  {
    //Test::TestAll(TEST_FPER|TEST_GNG_DDD|TEST_POLY|TEST_SERIES|TEST_POLYED);
	Test::TestAll(TEST_POLYED);
  }
  catch (testException e)
  {
    cout << "Tests aborted !!!!" << endl;
    cout << e.Message() << endl;
  }
  catch (char * msg)
  {
	  cout << msg << endl;
  }
  catch (...)
  {
	  cout << "Problem undefined!!!!" << endl;
  }
  
 
}

 
  
  


 
