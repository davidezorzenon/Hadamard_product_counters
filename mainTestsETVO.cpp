#include <iostream>
#include <exception>
#include <ctime>
#include <ratio>
#include <chrono>
#include "etvo.h"
#include "testsEtvo.h"
using namespace std;
using namespace etvo;
using namespace test;
using namespace std::chrono;

int main()
{			
	Test::setup();
	Test::ScenarioAllRegular(global::NB_ITER, global::NB_LOOPS);
	return 0;
}

 
  
  


 
