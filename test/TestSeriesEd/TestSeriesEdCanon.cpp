#include <iostream>
#include <exception>
#include "../Test.h"
//#include "../../parsers/parser.h"

using namespace std;
using namespace etvo;

namespace test
{
  bool Test::TestCanonSeriesEd(unsigned nIter)
  {
    cout << "TestCanonSeries" << endl;
    int j;
    bool success=true;
	j = 0;
	
	while (j < nIter && success)
	{
		unsigned dp = randGen::uni_int(1, 8);
		unsigned codp = randGen::uni_int(1, 8);
		int g = randGen::uni_int(2, 10);
		int d = randGen::uni_int(2, 10);

		Ed off = randGen::Rand_Ed_fixedG(dp, dp, 6, 6);
		polyEd p = randGen::Rand_polyEd_fixedG(dp, codp, 6);
		polyEd q = randGen::Rand_polyEd_fixedG(dp, codp, 6);
		q = q * off;
		seriesEd s1(p, q, g, d);
		if (!s1.isProper())
		{
			cout << "Unproper seriesEd";
			success = false;
			cout << "p=" << p << endl;
			cout << "q=" << q << endl;
			cout << "r=" << gd(g, d) << endl;
		}
		j++;
		cout << "->";
	}


	j = 0;
	while (j < nIter && success)
	{
		unsigned dp = randGen::uni_int(1, 10);
		unsigned codp = randGen::uni_int(1, 10);
		int g = randGen::uni_int(2, 8);
		int d = randGen::uni_int(2, 8);

		Ed off = randGen::Rand_Ed_fixedG(dp, dp, 8, 8);
		polyEd p = randGen::Rand_polyEd_fixedG(dp, codp, 10);
		polyEd q = randGen::Rand_polyEd_fixedG(dp, codp, 10);
		q = q * off;
		seriesEd s1(p, q, g, d);
		int timeWindow = randGen::uni_int(20, 50);
		polyEd trans1 = seriesEd::getPolyUpTo(timeWindow, p, q, gd(g, d));
		polyEd trans2 = s1.getPolyUpTo(timeWindow);
		if (!(trans1 == trans2))
		{
			polyEd trans3 = seriesEd::getPolyUpTo(timeWindow, s1.getP(), s1.getQ(), s1.getR());
			cout << "Problem in the development of a seriesEd" << endl;
			cout << "p=" << p << endl;
			cout << "q=" << q << endl;
			cout << "r=" << gd(g, d) << endl;
			cout << "s1=" << s1 << endl;
			cout << "trans1 -> " << timeWindow << "=" << trans1 << endl;
			cout << "trans2 -> " << timeWindow << "=" << trans2 << endl;
			polyEd trans4 = seriesEd::getPolyUpTo(timeWindow + 10, p, q, gd(g, d));
			cout << "trans4 = " << trans4 << endl;
			seriesEd::getPolyUpTo(timeWindow + 10, p, q, gd(g, d));
			success = false;
		}
		cout << "->";
		j++;
	}




    j = 0;
    while (j < nIter && success)
    {
      j++;
      unsigned dp = 1;
      unsigned codp = 1;
      int g = randGen::uni_int(2, 8);
      int d = randGen::uni_int(2, 8);
      poly p = randGen::Rand_poly(8);
      poly q = randGen::Rand_poly(8);
      gd off = gd(randGen::uni_int(10,20), randGen::uni_int(10, 20));
      series s(p, q, gd(g,d)); 
      polyEd pp = polyEd::toPolyEd(p);
      polyEd qq = polyEd::toPolyEd(q);
      seriesEd s1(pp, qq, g, d, true);
      seriesEd s2(pp, qq, g, d, false);

      
      if (!(seriesEd::toSeriesEd(s) == s1))
      {
        cout << "Problem A" << endl;
        cout << "seriesEd::ToSeriesEd(s) != s1" << endl;
        cout << "s1=" << s1 << endl;
        cout << "seriesEd::ToSeriesEd(s)=" << seriesEd::toSeriesEd(s) << endl;
        success = false;
      }

      if(!(seriesEd::toSeriesEd(s) == s2))
      {
        cout << "Problem B" << endl;
        cout << "seriesEd::ToSeriesEd(s) != s2" << endl;
        cout << "s2=" << s1 << endl;
        cout << "seriesEd::ToSeriesEd(s)=" << seriesEd::toSeriesEd(s) << endl;
        success = false;
      }
    }


    // Test de décomposition (impulse response) / Recomposition
    j = 0;
    while (j < nIter && success)
    {
      
      unsigned dp = randGen::uni_int(2, 6);
      unsigned codp = randGen::uni_int(2, 6);
      int g = randGen::uni_int(2, 5);
      int d = randGen::uni_int(2, 5);

      Ed off = randGen::Rand_Ed_fixedG(dp, dp, 6, 6);
      polyEd p = randGen::Rand_polyEd_fixedG(dp, codp, 8);
      polyEd q = randGen::Rand_polyEd_fixedG(dp, codp, 8);
      q = q * off;
      seriesEd s1(p, q, g, d,false);  //left form
     
      // decomposition as Impulse response
      vector<series> decomp;
      decomp = s1.toImpulseResponse();      

      gNg f(0, s1.getMaxGain().first, s1.getMaxGain().second, 0);
      Ed fEd(E_op(f), 0);
      seriesEd factor(fEd);
      seriesEd resultat;
      while (decomp.size())
      {        
        resultat = resultat + (seriesEd::toSeriesEd(decomp.back())*factor);
        factor = factor * seriesEd(Ed::g(1));
        decomp.pop_back();
      }

      
      if (!(s1 == resultat))
      {
        cout << "Problem C" << endl;
        cout << "s1=" << endl << s1 << endl;
        cout << "resultat=" << endl << resultat;
        success = false;
      }
      j++;
      cout << "->";
    }



    
    j = 0;
    while (j < 0 && success)
    {
      unsigned dp = randGen::uni_int(1, 8);
      unsigned codp = randGen::uni_int(1, 8);
      int g = randGen::uni_int(2, 8);
      int d = randGen::uni_int(2, 8);

      Ed off = randGen::Rand_Ed_fixedG(dp, dp, 6, 6);
      polyEd p = randGen::Rand_polyEd_fixedG(dp, codp, 8);
      polyEd q = randGen::Rand_polyEd_fixedG(dp, codp, 8);
      q = q * off;
      seriesEd s1(p, q, g, d, true);  //right form
      seriesEd s2(p, q, g, d, false); //left form
      
      if (!s1.isProper())  cout << endl << "s1=" << s1 << endl;      
      if(!s2.isProper())   cout << "s2=" << s2 << endl;
      
      seriesEd copieS1(s1);
      seriesEd copieS2(s2);
      s1.toLeft();
      s1.toRight();
      s2.toRight();
      s2.toLeft();

      if (!(s1 == copieS1))
      {
        cout << "Problem in Left<-> Right conversion" << endl;
        success = false;
      }
      if (!(s2 == copieS2))
      {
        cout << "Problem in Left<-> Right conversion" << endl;
        success = false;
      }



      int timeWindow = randGen::uni_int(10,30);
      polyEd trans1a = seriesEd::getPolyUpTo(timeWindow, p, q, gd(g, d), true);
      polyEd trans1b = s1.getPolyUpTo(timeWindow);

      polyEd trans2a = seriesEd::getPolyUpTo(timeWindow, p, q, gd(g, d), false);
      polyEd trans2b = s2.getPolyUpTo(timeWindow);

      if (!(trans1a == trans1b))
      {
        cout << "Problem in the development of a seriesEd" << endl;
        cout << "p=" << p << endl;
        cout << "q=" << q << endl;
        cout << "r=" << gd(g, d) << endl;
        cout << "s1=" << s1 << endl;
        cout << "trans1a -> " << timeWindow << "=" << trans1a << endl;
        cout << "trans1b -> " << timeWindow << "=" << trans1b << endl;
        success = false;
      }

      if (!(trans2a == trans2b))
      {
        cout << "Problem in the development of a seriesEd" << endl;
        cout << "p=" << p << endl;
        cout << "q=" << q << endl;
        cout << "r=" << gd(g, d) << endl;
        cout << "s2=" << s2 << endl;
        cout << "trans2a -> " << timeWindow << "=" << trans2a << endl;
        cout << "trans2b -> " << timeWindow << "=" << trans2b << endl;
        success = false;
      }
      j++;
      cout << "->";
    }

    j = 0;
    while (j < 0 && success)
    {
      j++;
      unsigned dp = randGen::uni_int(1, 8);
      unsigned codp = randGen::uni_int(1, 8);
      int g = randGen::uni_int(2, 8);
      int d = randGen::uni_int(2, 8);

      Ed off = randGen::Rand_Ed_fixedG(dp, dp, 6, 6);
      polyEd p = randGen::Rand_polyEd_fixedG(dp, codp, 8);
      polyEd q = randGen::Rand_polyEd_fixedG(dp, codp, 8);
      q = q * off;
      seriesEd s1(p, q, g, d, true);  //right form
      seriesEd s2(p, q, g, d, false); //left form

      for (unsigned k = 0; k < 5; k++)
      {
        int timeWindow = randGen::uni_int(5, 30);
        polyEd trans1a = seriesEd::getPolyUpTo(timeWindow, p, q, gd(g, d), true);
        polyEd trans1b = s1.getPolyUpTo(timeWindow);

        polyEd trans2a = seriesEd::getPolyUpTo(timeWindow, p, q, gd(g, d), false);
        polyEd trans2b = s2.getPolyUpTo(timeWindow);

        if (!(trans1a == trans1b))
        {
          cout << "Problem in the development of a seriesEd" << endl;
          cout << "p=" << p << endl;
          cout << "q=" << q << endl;
          cout << "r=" << gd(g, d) << endl;
          cout << "s1=" << s1 << endl;
          cout << "trans1a -> " << timeWindow << "=" << trans1a << endl;
          cout << "trans1b -> " << timeWindow << "=" << trans1b << endl;
          success = false;
          break;
        }

        if (!(trans2a == trans2b))
        {
          cout << "Problem in the development of a seriesEd" << endl;
          cout << "p=" << p << endl;
          cout << "q=" << q << endl;
          cout << "r=" << gd(g, d) << endl;
          cout << "s2=" << s2 << endl;
          cout << "trans2a -> " << timeWindow << "=" << trans2a << endl;
          cout << "trans2b -> " << timeWindow << "=" << trans2b << endl;
          success = false;
          break;
        }
      }

    }
    if (!success)
    {
      cout << endl << "Test failed !" << endl;
    }
    else cout << endl << "Test successful" << endl;
	return success;
  }
}