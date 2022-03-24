#include<iostream>
#include "../Test.h"
//#include "../../parsers/parser.h"
#include "../factory/FactoryFper.h"

using namespace std;
using namespace etvo;

namespace test
{
  bool Test::Regular_Fminp(unsigned nbIter)
  {
    cout << endl << endl << "Test Regular Fminp" << endl;    
    try {
      bool testOK = true;
      unsigned i = 0;
      while (testOK && i < nbIter)
      {
        int dP = randGen::uni_int(1, Test::gainInFactory);
        int codP = randGen::uni_int(1, Test::gainInFactory);
        FactoryFper fact(dP, codP, 30, 20, true, false);
        FactoryFper fact2(dP, codP, 30, 20, false, false);
        Fper f = fact.create();
        Fminp a(fact.create());
        Fminp b(fact.create());

        if (!((a + b) == a) && !((a + b) == b))
        {
          Fminp c(fact2.create());
          Fminp d(fact2.create());
          testOK &= TestIS<Fminp>::TestAll(a, b, c);
          testOK &= TestResiduation<Fminp>::TestAll(a, b, c, d);
          testOK &= TestResiduationIneq<Fminp>::TestAll(a, b, c, d);
          cout << "->";
          i++;
        }
      }
	  if (testOK)
		  cout << endl << endl << "Test Regular Fminp is SUCCESSFUL" << endl;
	  cout << "-------------------------------------------------------------------" << endl;
      return testOK;
    }
    catch (exception & e)
    {
      cout << e.what() << endl;
	  return false;
    }
  }

  bool Test::Regular_Fmaxp(unsigned nbIter)
  {
    cout << endl << endl << "Test Regular Fmaxp" << endl;
    try {
      bool testOK = true;
      unsigned i = 0;
      while (testOK && i < nbIter)
      {
        int dP = randGen::uni_int(1, Test::gainInFactory);
        int codP = randGen::uni_int(1,Test::gainInFactory);
        FactoryFper fact(dP, codP, 30, 20, true, false);
        FactoryFper fact2(dP, codP, 30, 20, false, false);
        Fper f = fact.create();
        Fmaxp a(fact.create());
        Fmaxp b(fact.create());

        if (!((a + b) == a) && !((a + b) == b))
        {
          Fmaxp c(fact2.create());
          Fmaxp d(fact2.create());

          testOK &= TestIS<Fmaxp>::TestAll(a, b, c);
          testOK &= TestResiduation<Fmaxp>::TestAll(a, b, c, d);
          testOK &= TestResiduationIneq<Fmaxp>::TestAll(a, b, c, d);
          i++;
          cout << "->";
        }
      }
	  if (testOK)
		  cout << endl << endl << "Test Regular Fminp is SUCCESSFUL" << endl;
	  cout << "-------------------------------------------------------------------" << endl;
      return testOK;
    }
    catch (exception e)
    {
      cout << e.what() << endl;
	  return false;
    }
  }

  bool Test::Unit_Fper()
  {
    cout << endl << endl << "Test Unit Fper" << endl;
    
    bool testOK = true;
    Fper f1(3, 4, { 1,2,2 });
    PRINT(f1);
    if (f1.getDomPer() != 3) testOK = false;
    if (f1.getCodomPer() != 4) testOK = false;

    Fper f2(0, 0, { 1,2,2 });
    PRINT(f2);
    if (f2.getDomPer() != 1) testOK = false;
    if (f2.getCodomPer() != 1) testOK = false;

    Fper f3(4, 5, { 1,2,2 });
    PRINT(f3);
    if (f3.getDomPer() != 4) testOK = false;
    if (f3.getCodomPer() != 5) testOK = false;

    Fper f4(4, 4, { 1,2,1,2 });
    PRINT(f4);
    if (f4.getDomPer() != 4) testOK = false;
    if (f4.getCodomPer() != 4) testOK = false;
	if(f4.getyMax0()==f4.getyMin0()) testOK = false;

	Fper f4b(1,1, { 3 });
	PRINT(f4b);
	if (f4b.getDomPer() != 1) testOK = false;
	if (f4b.getCodomPer() != 1) testOK = false;
	if (f4b.getyMax0() != f4b.getyMin0()) testOK = false;


    Fper f5(3, 4, { 0,2,3});
    PRINT(f5);

    for (int i = -3; i < 4; i++) cout << "f5(" << i << ")=" << f5(i) << " ";
    cout << endl;
    for (int i = -3; i < 4; i++) cout << "f5.getValue(" << i << ")=" << f5.getValue(i) << " ";
    cout << endl;

    cout << "f6=f5.extendBy(3)" << endl;
    Fper f6 = f5.extendBy(3);
    PRINT(f6);

    cout << "(f5==f6)=" << (f5 == f6) << endl;
    cout << "f6.reduce() gives the canonical form" << endl;
    f6.reduce();
    PRINT(f6);

    cout << "f5.getyMax0()=" << f5.getyMax0() << endl;
    cout << "f5.getyMin0()=" << f5.getyMin0() << endl;
	if (testOK)
		cout << endl << endl << "Test Unit Fper is SUCCESSFUL" << endl;
	cout << "-------------------------------------------------------------------" << endl;
    return testOK;
  }


  bool Test::Unit_Fminp()
  {
    cout << endl << endl << "Test Unit Fminp" << endl;
    Fminp f1(3, 4, {1,2,2 });
    PRINT(f1);
    Fminp f2(3, 4, { 0,0,3 });
    PRINT(f2);
    Fminp f3(3, 4, { 0,0,1 });
    PRINT(f3);
    Fminp f4(3, 4, { 2,2,3 });
    PRINT(f4);

    cout << "f1+f2=" << f1 + f2 << endl;
    cout << "fi.inf(f2)=" << f1.inf(f2) << endl;
    cout << "f3.getyMax0()=" << f3.getyMax0() << endl;
    cout << "f4.getyMin0()=" << f4.getyMin0() << endl;
    cout << "f3+f4=" << f3 + f4 << endl;
    return true;
  }
  bool Test::Unit_Fmaxp()
  {
    cout << endl << endl << "Test Unit Fmaxp" << endl;
    Fmaxp f1(3, 4, { 1,2,2 });
    PRINT(f1);
    Fmaxp f2(3, 4, { 0,0,3 });
    PRINT(f2);
    Fmaxp f3(3, 4, { 0,0,1 });
    PRINT(f3);
    Fmaxp f4(3, 4, { 2,2,3 });
    PRINT(f4);

    cout << "f1+f2=" << f1 + f2 << endl;
    cout << "f1.inf(f2)=" << f1.inf(f2) << endl;
    cout << "f3.getyMax0()=" << f3.getyMax0() << endl;
    cout << "f4.getyMin0()=" << f4.getyMin0() << endl;
    cout << "f3+f4=" << f3 + f4 << endl;
    return true;
  }
}