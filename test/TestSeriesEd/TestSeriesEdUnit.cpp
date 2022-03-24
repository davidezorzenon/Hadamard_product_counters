#include <iostream>
#include <exception>
#include "../Test.h"
//#include "../../parsers/parser.h"

using namespace std;
using namespace etvo;

namespace test
{
  unsigned Test::Unit_seriesEd()
  {
    bool success = true;
    cout << endl << endl << "Test Unit SeriesEd" << endl;
    cout << "Test Static Functions seriesEd" << endl;
    cout << "eps =" << seriesEd::Epsilon() << endl;
    cout << "e =" << seriesEd::E() << endl;
    cout << "T =" << seriesEd::Top() << endl;

    cout << "Test Constructors seriesEd" << endl;

    try
    {
     
        cout << "Constructors seriesEd" << endl;
        seriesEd s1;
        seriesEd s2(false);
        seriesEd s3(true);
      
		if (!s1.isEpsilon())  return 1;
		if(!s1.getP().isEpsilon()) return 1;
		if (!s1.getQ().isEpsilon()) return 1;
		if (s1.getR()!=gd(1,0)) return 1;


        if (!s2.isE())   return 2;
		if (!s2.getP().isEpsilon()) return 2;
		if (!s2.getQ().isE()) return 2;
		if (s2.getR() != gd(1, 0)) return 2;
		if (!s2.isPolynomial()) return 2;

        if (!s3.isTop())  return 3;
		if (!s3.getP().isTop()) return 3;
		if (!s3.getQ().isTop()) return 3;
		if (s3.getR() != gd(1, 0)) return 3;

        seriesEd s4(Ed::E());
        seriesEd s5(polyEd::E());
        if (!s4.isE()) return 4;
		if (!s5.isE())  return 5;
				
        seriesEd s6(Ed::g(2)*Ed::m(3)*Ed::b(2)*Ed::g(1)*Ed::d(4));
		if (!s6.getP().isEpsilon()) return 6;
		if (s6.getQ()!=polyEd(Ed(2,3,2,1,4))) return 6;
		if (s6.getR() != gd(1, 0)) return 6;
		if (!s6.isPolynomial()) return 6;

		polyEd q1 = Ed(2, 3, 2, 1, 3) + Ed(4, 3, 2, 0, 5);
		// q1 = g2.m3.b2.g1.d3+g4.m3.b2.d5
        seriesEd s7(q1);
		if (!s7.getP().isEpsilon()) return 7;
		if (s7.getQ() != polyEd(Ed(2, 3, 2, 1,3) + Ed(4,3,2,0,5))) return 7;
		if (s7.getQ().size() != 2) return 7;
		if (s7.getR() != gd(1, 0)) return 7;
		if (!s7.isPolynomial()) return 7;

        polyEd p1 = Ed(0,3,2,1,1)+Ed(1,3,2,0,2);
		// p1 = "g0.m3.b2.g1.d1+g1.m3.b2.d2";
		// q1 = g2.m3.b2.g1.d3+g4.m3.b2.d5
        seriesEd s8(p1,q1,3,4);		
		if(s8.getP()!=p1) return 8;
		if(s8.getQ()!=q1) return 8;
		if(!s8.isRightForm()) return 8;
		if(s8.getR()!=gd(3,4)) return 8;

        seriesEd s9(p1,q1,3,4,false);
		if (s9.getP() != p1) return 9;
		if (s9.getQ() != q1) return 9;
		if (!s9.isLeftForm()) return 9;
		if (s9.getR() != gd(3, 4)) return 9;
		        
		s8.toLeft();
		if (!s8.isLeftForm()) return 10;
		cout << s8 << endl;
        s8.toRight();
		if (s8.getP() != p1) return 10;
		if (s8.getQ() != q1) return 10;		     
        
        s9.toRight();
		if (!s9.isRightForm()) return 11;
		s9.toLeft();
		if (s9.getP() != p1) return 11;
		if (s9.getQ() != q1) return 11;
		if (!s9.isLeftForm()) return 11;
		if (s9.getR() != gd(3, 4)) return 11;

		s1 = seriesEd(q1, polyEd::Epsilon(), gd(0, 0));
		s2 = seriesEd(q1, q1, gd(0, 0));	
		s3 = seriesEd(q1, q1, gd(1, 0));
		s4 = seriesEd(q1, polyEd::Epsilon(), gd(2, 3));
	
		if (s1 != s2) return 12;
		if (s1 != s3) return 12;
		if (s1 != s4) return 12;
		if(!s1.isPolynomial()) return 12;

		s1 = seriesEd(q1, p1, gd(0, 0));
		s2 = seriesEd(polyEd::Epsilon(), p1+q1, gd(0, 0));
		s3 = seriesEd(polyEd::Epsilon(), p1 + q1, gd(1,0));
		
		if (s1 != s2) return 13;
		if (s1 != s3) return 13;
		if (!s1.isPolynomial()) return 13;
		try {
			s1 = seriesEd(q1, p1, gd(0, 1));
			return 14;
		}
		catch (const etvoException & ex)
		{
			cout << ex.what() << endl;
		}

		s1 = seriesEd(p1, q1, gd(3, 4));		
		if (!s1.isProper()) return 15;
		polyEd p = p1 + q1;
		polyEd q = q1 * Ed(3, 4) * (Ed(0,0)+Ed(3,4));
		s2 = seriesEd(p, q, gd(6, 8));
		if(s1!=s2) return 15;	 
        cout << "Test successful" << endl;
		return 0;
    }
    catch (exception e)
    {
		cout << "Exception during the test" << endl;
		cout << e.what() << endl;
		return 1;
     }
  }

  bool Test::Specific_seriesEd(unsigned nbIter)
  {
	  bool success = true;
	  cout << "----------------------------------" << endl;
	  cout << "Specific tests of seriesEd class " << endl << endl;
	  cout << "----------------------------------" << endl;
	  try {
		  success = Test::TestCanonSeriesEd(nbIter);
		  if (success) success = success && Test::TestSeriesEd::TestCanon(nbIter);
		  if (success)  success = success && Test::TestCoreSeriesEd(nbIter);
		  if (success)  success = success && Test::TestSeriesEd::TestLeftRight(nbIter);
		  if (success)  success = success && Test::TestSeriesEd::TestOtimesSS(nbIter);
		  if (success)  success = success && Test::TestSeriesEd::TestOtimesCD(nbIter);
		  if (success)  success = success && Test::TestSeriesEd::TestOtimes(nbIter);
		  if (success)  success = success && Test::TestSeriesEd::TestOplusSS(nbIter);
		  if (success)  success = success && Test::TestSeriesEd::TestOplusCD(nbIter);
		  if (success)  success = success && Test::TestSeriesEd::TestOplus(nbIter);
		  if (success) success = success && Test::TestSeriesEd::TestDistributivity(nbIter, 5);
		  if (success) success = success && Test::TestSeriesEd::TestStar(nbIter, 5);
	  }
	  catch (const char * msg)
	  {
		  cout << "Exception char * :" << msg << endl;
		  success = false;
	  }
	  catch (const etvoException & ex)
	  {
		  cout << "Exception etvoException * :" <<ex.what() << endl;
		  success = false;
	  }
	  catch (const testException & ext)
	  {
		  cout << "Exception testException * :" << ext.Message() << endl;
		  success = false;
	  }

	 return success;
  }

}