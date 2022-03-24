#include <iostream>
#include<algorithm>

#include "../Test.h"
//#include "../../parsers/parser.h"
#include "../factory/FactoryPolyEd.h"


using namespace std;
using namespace etvo;

std::default_random_engine genesed{ static_cast<long unsigned int>(time(0)) };
std::uniform_int_distribution<int> distsed(1, 100);

namespace test
{    
  bool Test::TestSeriesEd::TestLeftRight(unsigned nIter)
  {
	  bool success = true;
      cout << endl << "Test Left<->Right transform" << endl;
    
	  unsigned j = 0;
    while(j<nIter && success)
    {
      cout << "->";
      seriesEd s1 = randGen::Rand_seriesEd(10,10,15);
      s1.toLeft();
      int TH = 2 * (s1.getQ()[0].getD() + s1.getR().getd());
      polyEd pT1 = s1.getPolyUpTo(TH);
      s1.toRight();
      polyEd pT2 = s1.getPolyUpTo(TH);

      if (!(pT1 == pT2))
	  {
	   success = false;
        cout << "Problem in Left-Right transform !" << endl;
        cout << "s1=" << s1 << endl;
      }
	  j++;
    }
	if (success) cout << endl <<"Test Successful" << endl;
	else cout << endl << "Test Failed" << endl;
	return success;
  }

  bool Test::TestSeriesEd::TestOtimesSS(unsigned nIter)
  {
    bool success = true;
    cout << "Test s1*s2 (mmgd) compared to (se1*se2) (seriesEd)" << endl;
    //series<-> seriesEd
    
    for (unsigned i = 0; i < nIter; i++)
    {
      cout << "-> ";
      series s1 = randGen::Rand_series(6);
      series s2 = randGen::Rand_series(6);

      seriesEd se1 = seriesEd::toSeriesEd(s1);
      seriesEd se2 = seriesEd::toSeriesEd(s2);

      try {
        series s3 = s1 * s2;
        seriesEd se3 = se1 * se2;
        if (!(seriesEd::toSeriesEd(s3) == se3))
        {
          cout << "s1*s2 != se1*se2" << endl;
          cout << "s1=" << s1 << endl;
          cout << "s2=" << s2 << endl;
          cout << "se1=" << se1 << endl;
          cout << "se2=" << se2 << endl;
          cout << "s3s*s2=" << s3 << endl;
          cout << "se3=se1*se2" << se3 << endl;
          success = false;
          throw etvoException(902, "Problem in TestOtimesSS!");
        }
      }
      catch (const etvo::etvoException & ex)
      {
        if(ex.Num()!=901) throw etvoException(901, "Problem in TestOtimesSS!");
      }
      
    }
    if (success) cout << endl <<"Test Successful" << endl;
    else cout << endl << "Test Failed" << endl;
	return success;
  }

  bool Test::TestSeriesEd::TestOtimesCD(unsigned nIter)
  {
	  bool success = true;
    cout << endl << "TestSeriesEd::TestOtimesCD" << endl;

	unsigned i = 0;
	while(i<nIter && success)    
    {
	  i++;
      cout << "->";
      unsigned M = randGen::uni_int(1, 5);
      unsigned B = randGen::uni_int(1, 5);
      gd r1(randGen::uni_int(1, 8), randGen::uni_int(1, 8));
      gd r2(randGen::uni_int(1, 8), randGen::uni_int(1, 8));

      seriesEd s1 = randGen::Rand_seriesEd_fixedG_fixedSlope(M, B, r1, 6);
      seriesEd s2 = randGen::Rand_seriesEd_fixedG_fixedSlope(M, B, r1, 6);
      //seriesEd s3 = randGen::Rand_seriesEd_fixedG_fixedSlope(M, B, r2, 6);

      seriesEd s4 = s1 * s2;
      seriesEd s5 = s1.otimesCD(s2);

      if (!(s4 == s5))
      {
        cout << s4 << endl;
        cout << s5 << endl;
		success = false;
      }
    }
	if (success) cout << endl << "Test Successful" << endl;
	else cout << endl << "Test Failed" << endl;
	return success;
  }

  bool Test::TestSeriesEd::TestOtimes(unsigned nIter)
  {
    cout << endl << "Test se1*se2 (seriesEd)" << endl;
    bool success = true;
    for (unsigned i = 0; i < nIter; i++)
    {
      cout << "-> ";     
      seriesEd s1 = randGen::Rand_seriesEd(7,7,6);
      seriesEd s2 = randGen::Rand_seriesEd(6,6,6);
      
      try {
        seriesEd s3 = s1 * s2;

        int hD1 = s3.getQ()[0].getD() + 2 * s3.getR().getd();
        int hD2 = hD1 + 20;

        polyEd p1 = s1.getPolyUpTo(hD2);
        polyEd p2 = s2.getPolyUpTo(hD2);
        polyEd p3 = p1 * p2;
        polyEd p4 = s3.getPolyUpTo(hD1);;
        Ed md = p3.getFirstDif(p4);
        if (md.getD() != 0)
        {
          cout << "difference between polynomial and series :";
          cout << "Dif=" << md << endl;
          cout << "s1=" << s1 << endl;
          cout << "s2=" << s2 << endl;
          cout << "s1*s2=" << s3 << endl;
          cout << "p1*p2=" << p3 << endl;
          success = false;
          throw etvoException(1000, "Problem in otimes series");
        }
      }
      catch (const etvo::etvoException & ex)
      {
        if(ex.Num()!=901) throw etvoException(1000, "Problem in otimes series");
		success = false;
      }
    }
    if (success) cout <<endl << "Test Successful" << endl;
    else cout << endl <<"Test Failed" << endl;
	return success;
  }

  bool Test::TestSeriesEd::TestOplusSS(unsigned nIter)
  {
	bool success = true;
	unsigned i = 0;
    cout << endl << "TestOplusSS" << endl;
    //series<-> seriesEd
    while(i < nIter && success)
    {
		i++;
      cout << "-> ";
      series s1 = randGen::Rand_series(6);
      series s2 = randGen::Rand_series(6);
      
      seriesEd se1 = seriesEd::toSeriesEd(s1);
      seriesEd se2 = seriesEd::toSeriesEd(s2);
      try {
        series s3 = s1 + s2;
        seriesEd se3 = se1 + se2;

        if (!(seriesEd::toSeriesEd(s3) == se3))
        {
          cout << "KO" << endl;
          cout << "s1=" << s1 << endl;
          cout << "s2=" << s2 << endl;
          cout << "s3=" << s3 << endl;
          cout << "se3=" << se3 << endl;
		  success = false;
          throw etvoException(0, "Problem in TesOplusSS s3!=se3");
        }

        if (!(s3 == se3.toSeries()))
        {
          cout << "KO" << endl;
          cout << "s1=" << s1 << endl;
          cout << "s2=" << s2 << endl;
          cout << "s3=" << s3 << endl;
          cout << "se3=" << se3 << endl;
		  success = false;
          throw etvoException(0, "Problem in TesOplusSS s3!=se3");
        }
      }
      catch (const etvo::etvoException & e)
      {
        if(e.Num()==901)  cout << e.what() << endl;
        else throw e;        
      }
    }
	if (success) cout << endl << "Test Successful" << endl;
	else cout << endl << "Test Failed" << endl;
	return success;
  }

  bool Test::TestSeriesEd::TestOplusCD(unsigned nIter)
  {
	bool success = true;
    cout << endl << "TestSeriesEd::TestOplusCD" << endl;
	unsigned i = 0;
	while (i < nIter && success)
	{
		i++;
      cout << "->";

      unsigned M = randGen::uni_int(1, 8);
      unsigned B = randGen::uni_int(1, 8);
      gd r1(randGen::uni_int(1, 8), randGen::uni_int(1, 8));
      gd r2(randGen::uni_int(1, 8), randGen::uni_int(1, 8));

      seriesEd s1 = randGen::Rand_seriesEd_fixedG_fixedSlope(M, B, r1, 6);
      seriesEd s2 = randGen::Rand_seriesEd_fixedG_fixedSlope(M, B, r1, 6);
      seriesEd s3 = randGen::Rand_seriesEd_fixedG_fixedSlope(M, B, r2, 6);

      seriesEd s4 = s1 + s2;
      seriesEd s5 = s1.oplusCD(s2);
   
      if (!(s4 == s5))
      {
        cout << s4 << endl;
        cout << s5 << endl;
		success = false;
      }
    }
	if (success) cout << endl << "Test Successful" << endl;
	else cout << endl << "Test Failed" << endl;
	return success;
  }
  

  bool Test::TestSeriesEd::TestOplus(unsigned nIter)
  {
	  cout << endl << "TestSeriesEd::TestOplus" << endl;
	  bool success = true;
	  unsigned i = 0;
	  while (i < nIter && success)
	  {
		i++;    
      cout << "-> ";
         
      unsigned M = randGen::uni_int(1, 8);
      unsigned B = randGen::uni_int(1, 8);
      gd r1(randGen::uni_int(1, 8), randGen::uni_int(1, 8));
      gd r2(randGen::uni_int(1, 8), randGen::uni_int(1, 8));

      seriesEd s1 = randGen::Rand_seriesEd_fixedG_fixedSlope(M, B, r1, 6);
      seriesEd s2 = randGen::Rand_seriesEd_fixedG_fixedSlope(M, B, r1, 6);     
      seriesEd s3 = randGen::Rand_seriesEd_fixedG_fixedSlope(M, B, r2, 6);

      s1.toLeft();
      s2.toLeft();
      
      int hD = s1.getQ()[0].getD()+2*s1.getR().getd();
      hD = std::max(hD,(int)( s2.getQ()[0].getD() + 2 * s2.getR().getd()));
      hD = std::max(hD, (int)(s3.getQ()[0].getD() + 2 * s3.getR().getd()));

      polyEd p1 = s1.getPolyUpTo(hD);
      polyEd p2 = s2.getPolyUpTo(hD);
      polyEd p3 = s3.getPolyUpTo(hD);

      polyEd p4 = p1 + p2;
      seriesEd s4 = s1 + s2;
      polyEd p5 = s4.getPolyUpTo(hD);
      Ed m4 = Ed(p4[0].getE_op(), hD-10);
      Ed m5 = Ed(p5[0].getE_op(), hD-10);
      p4 = p4.inf(polyEd(m4));
      p5 = p5.inf(polyEd(m5));

      if (!(p4 == p5))
      {
        cout << "KO sum  different slopes!!!" << endl;
        cout << "p4=" << p4 << endl;
        cout << "p5=" << p5 << endl;
        cout << "dif =" << p4.getFirstDif(p5) << endl;
		success = false;
        throw etvoException(310, "Problem in sum of seriesEd");
      }

      p4 = p1 + p3;
      s4 = s1 + s3;
      p5 = s4.getPolyUpTo(hD);
      m4 = Ed(p4[0].getE_op(), hD - 10);
      m5 = Ed(p5[0].getE_op(), hD - 10);
      p4 = p4.inf(polyEd(m4));
      p5 = p5.inf(polyEd(m5));

      //cout << "p3=" << p3 << endl;
      //cout << "p4=" << p4 << endl;
      if (!(p4 == p5))
      {
        cout << "KO sum same slope!!!" << endl;
        cout << "p4=" << p4 << endl;
        cout << "p5=" << p5 << endl;
        cout << "dif =" << p4.getFirstDif(p5) << endl;
		success = false;
        throw etvoException(310, "Problem in sum of seriesEd");
      }    
    }
	  if (success) cout << endl << "Test Successful" << endl;
	  else cout << endl << "Test Failed" << endl;
	  return success;
  }
  bool Test::TestSeriesEd::TestDistributivity(unsigned nbIter, unsigned nTerms)
  {
    cout << endl << "Test distributivity of seriesEd" << endl;
	bool success = true;
	unsigned i = 0;
	while (i < nbIter && success)
	{
	  i++;    
      cout << "->";
      unsigned m1 = distsed(genesed) % 6 + 1;
      unsigned b1 = distsed(genesed) % 6 + 1;
      unsigned m2 = distsed(genesed) % 6 + 1;
      unsigned b2 = distsed(genesed) % 6 + 1;
      gd off(distsed(genesed) % 10 + 2, distsed(genesed) % 10);

      seriesEd sa, sb, sc;
      sa = randGen::Rand_seriesEd_fixedG(m1, b1, nTerms, off);
      sb = randGen::Rand_seriesEd_fixedG(m2, b2, nTerms, off);
      sc = randGen::Rand_seriesEd_fixedG(m2, b2, nTerms, off);
      if (!((sb + sc) == (sc + sb)))
      {
		success = false;        
      }
      
      if (!((sa*(sb + sc)) == (sa*sb + sa*sc)))
      {
		success = false;
        seriesEd sr1 = sa*(sb + sc);
        seriesEd sr2 = (sa*sb + sa*sc);

        cout << "sa=" << sa << endl;
        cout << "sb=" << sb << endl;
        cout << "sc=" << sc << endl;
        cout << "sa*(sb+sc)" << sr1<< endl;
        cout << "sasb+sasc" << sr2<< endl;
        sr1.canon();
        sr2.canon();       
       cout << "sr1=" << sr1 << endl;
       cout << "sr2=" << sr2 << endl;    
      }
    }
	if (success) cout << endl << "Test Successful" << endl;
	else cout << endl << "Test Failed" << endl;
	return success;
  }


  bool Test::TestSeriesEd::TestStar(unsigned nbIter,unsigned nTerms)
  {
	bool success = true;
	bool Ok = true;
    cout << "Test star of seriesEd ..." << endl;
	unsigned i = 0;
	while (i < nbIter && success)
	{
		Ok = true;	
        cout << "->";
        unsigned gain = distsed(genesed) % 8 + 1;
        gd off(distsed(genesed) % 10 + 2+gain, distsed(genesed) % 10);

        seriesEd s;
        s = randGen::Rand_seriesEd_fixedG(gain, gain, nTerms, off);		
		seriesEd ks1,ks2;
		try {		
			cout << "s=" << s << endl;
			cout << "start star computation" << endl;
			ks1 = s.star();
			Ok = true;
			i++;
		}
		catch (const char * msg)
		{
			Ok = false;
		}
		catch (const exception & ex)
		{
			Ok = false;
		}
		if (Ok)
		{			
			cout << "[s]*=" << ks1 << endl;
			cout << "start computation [[s]*]*..." << endl;
			ks2 = ks1.star();					
			if (ks1 != ks2)
			{
				cout << endl << endl << "star and starAlternate give different results" << endl;
			}
			else
			{
				cout << "[[s]*]*=[s]*" << endl;
			}
			seriesEd kss = ks1*ks1;
			if (kss != ks1)
			{
				cout << endl << endl << "ks1*ks1!=ks1!!!" << endl;
				cout << "ks=" << ks1 << endl;
				cout << "kss=" << kss << endl;
				success = false;
			}		
			else
			{
				cout << "[s]*.[s]*=[s]*" << endl;
			}
		}
      }
	if (success) cout << endl << "Test Successful" << endl;
	else cout << endl << "Test Failed" << endl;
	return success;
  }
  
  bool Test::TestSeriesEd::TestCanon(unsigned nIter)
  {
	 bool success = true;
	 cout << endl << "TestCanon seriesEd " << endl;
	 unsigned i = 0;
	 while (i < nIter && success)
	 {
	 i++;
      cout <<"->";
      unsigned Me = distsed(genesed) % 8 + 1;
      unsigned Be = distsed(genesed) % 8 + 1;
    
      polyEd p,q;
      do
      {
        p = randGen::Rand_polyEd_fixedG(Me, Be, 8);
      } while (p.size() < 2);
      do
      {
        q = randGen::Rand_polyEd_fixedG(Me, Be, 8);
      } while (q.size() < 2);
	       
      int nu = distsed(genesed) % 20 + 1;
      int tau = distsed(genesed) % 20 + 1;
      seriesEd s2(p,q, nu,tau);
	  if (!s2.isProper())
	  {
		  cout << "s2 is not in a proper form" << endl;
		  cout << s2 << endl;
		  success = false;
	  }
	  int T = 10+s2.getQ()[s2.getQ().size() - 1].getD() + s2.getR().getd();
      polyEd p1 = s2.getPolyUpTo(T);
      polyEd p2 = seriesEd::getPolyUpTo(T, p, q, gd(nu,tau));
	  if (p1 != p2)
	  {
		  success = false;
		  cout << "r=" << gd(nu, tau) << endl;
		  cout << "dif p1 p2=" << p1.getFirstDif(p2) << endl;
	  }
	        
      seriesEd s3(p,q,nu, tau,false);
	  T = 10+s3.getQ()[s3.getQ().size() - 1].getD() + s3.getR().getd();
      polyEd p3 = s3.getPolyUpTo(T);
      polyEd p4 = seriesEd::getPolyUpTo(T, p, q, gd(nu, tau),false);
	  if (p3 != p4)
	  {
		  success = false;
		  cout << "r=" << gd(nu, tau) << endl;
		  cout << "dif p3 p4=" << p3.getFirstDif(p4) << endl;
	  }
    }
	 if (success) cout << endl << "Test Successful" << endl;
	 else cout << endl << "Test Failed" << endl;
	 return success;
  }  
}