#include <iostream>
#include <exception>
#include "../Test.h"
//#include "../../parsers/parser.h"

using namespace std;
using namespace etvo;

namespace test
{
  bool Test::TestCoreSeriesEd(unsigned nIter)
  {
    cout << endl << endl << "Test Core SeriesEd" << endl;
    int j = 0;
    bool success = true;
    while (j < nIter && success)
    {
      unsigned dp = randGen::uni_int(2, 6);
      unsigned codp = randGen::uni_int(2, 6);
      int g = randGen::uni_int(2, 6);
      int d = randGen::uni_int(2, 6);

      Ed off = randGen::Rand_Ed_fixedG(dp, dp, 3, 3);
      polyEd p = randGen::Rand_polyEd_fixedG(dp, codp, 5);
      polyEd q = randGen::Rand_polyEd_fixedG(dp, codp, 5);
      q = q * off;
      gNg::setCanonForm(1);
      
      seriesEd s1(p, q, g, d, false);  //left form
      matrix<series> C1 = s1.getCore();         
      seriesEd s2 = seriesEd::coreToSeriesEd(C1);      
      //cout << s1 << endl;
      //cout << s2 << endl;
      cout << "(" << C1.GetRow() << "x" << C1.GetColumn() << ")";
      if (!(s1 == s2))
      {
        cout << "Problem !" << endl;
        cout << "s1=" << s1 << endl;
        cout << "s2=" << s2 << endl;
        success = false;
      }

      // series gain 1,1
      series ss = randGen::Rand_series(5, gd(1, 3));
      seriesEd s3 = seriesEd::toSeriesEd(ss);
      matrix<series> C2 = s3.getCore();     
      seriesEd s4 = seriesEd::coreToSeriesEd(C2);
      if (!(s3 == s4))
      {
        cout << "Problem !" << endl;
        cout << "s3=" << s3 << endl;
        cout << "s4=" << s4 << endl;
        success = false;
      }

      poly ps = randGen::Rand_poly(8);
      seriesEd s5 = seriesEd(polyEd::toPolyEd(ps));
      matrix<series> C3 = s5.getCore();   
      seriesEd s6 = seriesEd::coreToSeriesEd(C3);

      if (!(s5 == s6))
      {
        cout << "Problem !" << endl;
        cout << "s5=" << s5 << endl;
        cout << "s6=" << s6 << endl;
        success = false;
      }    
     
      j++;
      cout << "->";
    }

    if (success == false)
    {
      cout << endl <<"Test failed!" << endl;
    }
    else cout <<endl << "Test successful" << endl;
	return success;
  }
}