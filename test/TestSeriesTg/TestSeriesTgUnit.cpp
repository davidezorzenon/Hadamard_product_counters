#include <iostream>
#include <exception>
#include "../Test.h"
//#include "../../parsers/parser.h"

using namespace std;
using namespace etvo;

namespace test
{
  unsigned Test::Unit_seriesTg()
  {
    bool success = true;
    cout << endl << endl << "Test Unit SeriesTg" << endl;
    cout << "Test Static Functions seriesTg" << endl;
    cout << "eps =" << seriesTg::Epsilon() << endl;
    cout << "e =" << seriesTg::E() << endl;
    cout << "T =" << seriesTg::Top() << endl;

    cout << "g1=" << tg(1) << endl;
    cout << "d2=" << td(2) << endl;
    cout << "D3=" << tD(3) << endl;
    cout << "d<2,3>=" << td({ 2,3 }) << endl;
    seriesTg sa = td({ 2,3 });
    cout << sa.toStringAsDeltaVar() << endl;



    
    cout << "Test Constructors seriesTg" << endl;
    
    try
    {
     
        cout << "Constructors seriesTg" << endl;
        seriesTg s1;
        seriesTg s2(false);
        seriesTg s3(true);
      
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

    seriesTg s4(Tg::E());
    seriesTg s5(polyTg::E());
        if (!s4.isE()) return 4;
		if (!s5.isE())  return 5;
			
    
    seriesTg s6(Tg::d(2)*Tg::D(3)*Tg::d(1)*Tg::g(4));
    cout << s6 << endl;
		if (!s6.getP().isEpsilon()) return 6;
		if (s6.getQ()!=polyTg(Tg(2,3,1,4))) return 6;
		if (s6.getR() != gd(1, 0)) return 6;
		if (!s6.isPolynomial()) return 6;

    
		polyTg q1 = Tg(4, 3, 2,3) + Tg(6, 3, 1,5);
    cout << q1 << endl;

    seriesTg s7(q1);
		if (!s7.getP().isEpsilon()) return 7;
		if (s7.getQ() != polyTg(Tg(4,3,2,3) + Tg(6,3,1,5))) return 7;
		if (s7.getQ().size() != 2) return 7;
		if (s7.getR() != gd(1, 0)) return 7;
		if (!s7.isPolynomial()) return 7;

    
    polyTg p1 = Tg(0,3,2,1)+Tg(2,3,1,2);
    PRINT(p1);
    PRINT(q1);

		seriesTg s8(p1,q1,3,4);		
    PRINT(s8);
    cout << s8.toStringAsDeltaVar() << endl;
    
		if(s8.getP()!=p1) return 8;
		if(s8.getQ()!=q1) return 8;
		if(!s8.isRightForm()) return 8;
		if(s8.getR()!=gd(3,4)) return 8;
       

    seriesTg s9(p1,q1,3,5,false);
    PRINT(s9);
    cout << s9.toStringAsDeltaVar() << endl;

		if (s9.getP() != p1) return 9;
		if (s9.getQ() != q1) return 9;
		if (!s9.isLeftForm()) return 9;
		if (s9.getR() != gd(3, 5)) return 9;
		        
		s8.toLeft();
    PRINT(s8);
    cout << s8.toStringAsDeltaVar() << endl;

		if (!s8.isLeftForm()) return 10;
		s8.toRight();
		if (s8.getP() != p1) return 10;
		if (s8.getQ() != q1) return 10;		     
        
    s9.toRight();
    PRINT(s9);
    cout << s9.toStringAsDeltaVar() << endl;
		if (!s9.isRightForm()) return 11;
		s9.toLeft();
		if (s9.getP() != p1) return 11;
		if (s9.getQ() != q1) return 11;
		if (!s9.isLeftForm()) return 11;
		if (s9.getR() != gd(3, 5)) return 11;

		s1 = seriesTg(q1, polyTg::Epsilon(), gd(0, 0));
		s2 = seriesTg(q1, q1, gd(0, 0));
		s3 = seriesTg(q1, q1, gd(1, 0));
		s4 = seriesTg(q1, polyTg::Epsilon(), gd(2, 3));
	
		if (s1 != s2) return 12;
		if (s1 != s3) return 12;
		if (s1 != s4) return 12;
		if(!s1.isPolynomial()) return 12;

		s1 = seriesTg(q1, p1, gd(0, 0));
		s2 = seriesTg(polyTg::Epsilon(), p1+q1, gd(0, 0));
		s3 = seriesTg(polyTg::Epsilon(), p1 + q1, gd(1,0));
		
		if (s1 != s2) return 13;
		if (s1 != s3) return 13;
		if (!s1.isPolynomial()) return 13;
		try {
			s1 = seriesTg(q1, p1, gd(0, 1));
			return 14;
		}
		catch (const etvoException & ex)
		{
			cout << ex.what() << endl;
		}

		s1 = seriesTg(p1, q1, gd(3, 4));		
    PRINT(s1);
		if (!s1.isProper()) return 15;
		polyTg p = p1 + q1;
		polyTg q = q1 * Tg(4,3) * (Tg(0,0)+Tg(4,3));
    s2 = seriesTg(p, q, gd(6, 8));
    PRINT(s2);

		if(s1!=s2) return 15;	 

    seriesTg s12 = td({ 2,3,2,3 });
    cout << s12.toStringAsDeltaVar() << endl;
    cout << "Test successful" << endl;
		return 0;
    }
    catch (exception e)
    {
		cout << "Exception during the test" << endl;
		cout << e.what() << endl;
		return 1;
     }
    return 0;
  }

  bool Test::Specific_seriesTg(unsigned nbIter)
  {
	  bool success = true;
	  cout << "Specific tests of seriesEd class " << endl << endl;

    /*
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
    */
	 return success;
  }
  

}