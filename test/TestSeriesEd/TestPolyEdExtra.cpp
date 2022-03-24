#include <iostream>
#include<algorithm>
#include "../Test.h"
#include "../factory/FactoryPolyEd.h"
#include "../factory/FactoryPoly.h"


using namespace std;
using namespace etvo;

namespace test
{
  bool Test::TestPolyEd::TestOplus(unsigned nIter)
  {
    cout << endl << "Test PolyEd Test if p1+p2 = p1 + Sum monomials in p2" << endl;
    bool success = true;
	FactoryPolyEd factP(20,7,9,5,true,false,gd(5,5),8);
    for (unsigned i = 0; i < nIter; i++)
    {
      cout << "-> ";
      polyEd p1 = factP.create();
      polyEd p2 = factP.create();

      polyEd p3 = p1 + p2;

      polyEd p4 = p1;
      polyEd p5 = p1;
      vector<Ed> pV = p2.getTerms();
      for (Ed m : pV) { p4.add(m); }
      for (Ed m : pV) { p5 = p5 + m; }

	  if(!p3.isCanon())
	  {
		  success = false;
		  cout << "Problem !" << endl;
		  cout << "p1+p2 is not in a canonical form" << p3 << endl;		  
	  }
      if (!(p3 == p4))
      {
        success = false;
        cout << "Problem !" << endl;
        cout << "p1+p2=" << p3 << endl;
        cout << "p1 + Sum m in p2 (p4)= " << p4 << endl;
      }

      if (!(p3 == p5))
      {
        cout << "Problem !" << endl;
        cout << "p1+p2=" << p3 << endl;
        cout << "p1 + Sum m in p2 (p5)= " << p5 << endl;
        success = false;
      }
    }
	if (success) cout << endl << "Test successful" << endl;
	else cout << endl << "Test failded " << endl;
	return success;
  }
  bool Test::TestPolyEd::TestOplusPP(unsigned nIter)
  {
	 FactoryPoly factP(8, 4, false, gd(3, 3), 10);
    cout << endl << "Test p1+p2=p3 (mmgd) <-> pe1+pe2=pe3 (polyEd)" << endl;
    bool success = true;
    //poly<-> polyEd
    for (unsigned i = 0; i < nIter; i++)
    {
      cout << "-> ";
	  poly p1 = factP.create();
      poly p2 = factP.create();

      polyEd pe1 = polyEd::toPolyEd(p1);
      polyEd pe2 = polyEd::toPolyEd(p2);

      poly p3 = p1 + p2;
      polyEd pe3 = pe1 + pe2;

      if (!(polyEd::toPolyEd(p3) == pe3))
      {
        cout << "KO" << endl;
        cout << p3 << endl;
        cout << pe3 << endl;
        success = false;
      }
    }
	if (success) cout << endl << "Test successful" << endl;
	else cout << endl << "Test failded " << endl;
	return success;
  }

  
  bool Test::TestPolyEd::TestOtimesPP(unsigned int nIter)
  {
	  FactoryPoly factP(8, 4, false, gd(3, 3), 10);
    cout << endl << "Test p1*p2=p3 (mmgd) <-> pe1*pe2=pe3 (polyEd)" << endl;
    bool success = true;

    //poly<-> polyEd
    for (unsigned i = 0; i < nIter; i++)
    {
      cout << "-> ";
      poly p1 = factP.create();
      poly p2 = factP.create();

      polyEd pe1 = polyEd::toPolyEd(p1);
      polyEd pe2 = polyEd::toPolyEd(p2);

      poly p3 = p1 * p2;
      polyEd pe3 = pe1 * pe2;

      if (!(polyEd::toPolyEd(p3) == pe3))
      {
        cout << "KO" << endl;
        cout << p3 << endl;
        cout << pe3 << endl;
        success = false;
      }
    }
    if (success) cout << endl << "Test successful" << endl;
    else cout << endl << "Test failded " << endl;
	return success;
  }

  bool Test::TestPolyEd::TestCompFrac(unsigned int nIter)
  {
	FactoryPolyEd factP(8,10,10,5,false,false,gd(3, 3),10);
    cout << endl << "Test p1/p2=p3 <-> p1.rfracCd(p2)" << endl;
    cout << endl << "Test p2\\p1=p3 <-> p1.lfracCd(p2)" << endl;

    bool success = true;

    //poly<-> polyEd
    for (unsigned i = 0; i < nIter; i++)
    {
      cout << "-> ";
	  polyEd p1 = factP.create();
      polyEd p2 = factP.create();

      polyEd p3 = p1.lfrac(p2);
      polyEd p4 = p1.lfracCD(p2);
      if (p3 != p4)
      {
        cout << "KO" << endl;
        cout << "p1.lfrac(p2)=" << p3 << endl;
        cout << "p1.lfracCD(p2)=" << p4 << endl;
        success = false;
      }

      p3 = p1.rfrac(p2);
      p4 = p1.rfracCD(p2);
      if (p3 != p4)
      {
        cout << "KO" << endl;
        cout << "p1.rfrac(p2)=" << p3 << endl;
        cout << "p1.rfracCD(p2)=" << p4 << endl;
        success = false;
      }
    }
    if (success) cout << endl << "Test successful" << endl;
    else cout << endl << "Test failded " << endl;
	return success;
  }

  bool Test::TestPolyEd::TestCompInfCD(unsigned int nIter)
  {
	FactoryPolyEd factP(20, 7, 9, 5, true, false, gd(5, 5), 8);
    cout << endl << "Test p1.inf(p2)=p3 <-> p1.infCD(p2)" << endl;
   
    bool success = true;

    //poly<-> polyEd
    for (unsigned i = 0; i < nIter; i++)
    {
      cout << "-> ";     
      polyEd p1 = factP.create();
      polyEd p2 = factP.create();

      polyEd p3 = p1.inf(p2);
      polyEd p4 = p1.infCD(p2);
      if (p3 != p4)
      {
        cout << "KO" << endl;
        cout << "p1.inf(p2)=" << p3 << endl;
        cout << "p1.infCD(p2)=" << p4 << endl;
        success = false;
      }

    }
    if (success) cout << endl << "Test successful" << endl;
    else cout << endl << "Test failded " << endl;
	return success;
  }

  bool Test::TestPolyEd::TestCompOplusCD(unsigned int nIter)
  {
	  FactoryPolyEd factP(20, 7, 9, 5, true, false, gd(5, 5), 8);
	  cout << endl << "Test p1.oplus(p2)=p3 <-> p1.oplusCD(p2)" << endl;

	  bool success = true;

	  //poly<-> polyEd
	  for (unsigned i = 0; i < nIter; i++)
	  {
		  cout << "-> ";
		  polyEd p1 = factP.create();
		  polyEd p2 = factP.create();

		  polyEd p3 = p1.oplus(p2);
		  polyEd p4 = p1.oplusCD(p2);
		  if (p3 != p4)
		  {
			  cout << "KO" << endl;
			  cout << "p1.oplus(p2)=" << p3 << endl;
			  cout << "p1.oplusCD(p2)=" << p4 << endl;
			  success = false;
		  }

	  }
	  if (success) cout << endl << "Test successful" << endl;
	  else cout << endl << "Test failded " << endl;
	  return success;
  }

  bool Test::TestPolyEd::TestCompOtimesCD(unsigned int nIter)
  {
	  FactoryPolyEd factP(20, 7, 9, 5,false, false, gd(5, 5), 8);
	  cout << endl << "Test p1.otimes(p2)=p3 <-> p1.otimesCD(p2)" << endl;

	  bool success = true;

	  //poly<-> polyEd
	  for (unsigned i = 0; i < nIter; i++)
	  {
		  cout << "-> ";
		  polyEd p1 = factP.create();
		  polyEd p2 = factP.create();

		  polyEd p3 = p1.otimes(p2);
		  polyEd p4 = p1.otimesCD(p2);
		  if (p3 != p4)
		  {
			  cout << "KO" << endl;
			  cout << "p1.otimes(p2)=" << p3 << endl;
			  cout << "p1.otimesCD(p2)=" << p4 << endl;
			  success = false;
		  }

	  }
	  if (success) cout << endl << "Test successful" << endl;
	  else cout << endl << "Test failded " << endl;
	  return success;
  }

}