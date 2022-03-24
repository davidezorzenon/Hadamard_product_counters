#include "../Test.h"
#include "../factory/FactoryPoly.h"
#include "../factory/FactorySeries.h"

#include<iostream>


using namespace std;
using namespace etvo;

namespace test
{

  unsigned Test::Unit_gdWrapper()
  {
    bool testOK = true;
    unsigned numTest = 0;
    cout << endl << endl << "Test Unit etvo::gd" << endl;
    /* degenrate cases : not correctly handled
    gd degen1(0, global::INF);
    gd degen2(0, global::_INF);
    gd degen3(global::INF,0);
    gd degen4(global::_INF,0);
    gd degen5(global::INF, global::INF);
    gd degen6(global::_INF, global::INF);
    gd degen7(global::_INF, global::_INF);
    gd degen8(global::INF, global::_INF);

    PRINT(degen1);
    PRINT(degen2); 
    PRINT(degen3); 
    PRINT(degen4); 
    PRINT(degen5); 
    PRINT(degen6);
    PRINT(degen7);
    PRINT(degen8);
    */

    gd m1;
    m1 = gd();
    if (m1 != gd::E()) { testOK = false;  numTest = 1;   return numTest;    }
    m1 = gd(2, 3);
    if (m1.getg() != 2) { testOK = false;  numTest = 2; return numTest;    }
    if (m1.getd() != 3) { testOK = false;  numTest = 3; return numTest;    }
    gd m2(m1);
    if (m2.getg() != 2) { testOK = false;  numTest = 4;  return numTest;    }
    if (m2.getd() != 3) { testOK = false;  numTest = 5;  return numTest;    }
    gd m3(5, 4), m4(3, 7);
    gd m5;
    m5 = m3 * m4;
    if (m5.getg() != 8) { testOK = false;  numTest = 6;  return numTest;    }
    if (m5.getd() != 11) { testOK = false;  numTest = 7;  return numTest;    }
    if(!(m3!=m4)) { testOK = false;  numTest = 8;  return numTest;    }
    if(m3==m4) { testOK = false;  numTest = 9;  return numTest;    }
    if(!(m1==m2)) { testOK = false;  numTest = 10;  return numTest;    }
    if(m1!=m2) { testOK = false;  numTest = 11;  return numTest;    }
    m5 = m3.inf(m4);
    if (m5.getg() != 5) { testOK = false;  numTest = 12; return numTest;    }
    if (m5.getd() != 4) { testOK = false;  numTest = 13;  return numTest;    }
    m5 = m3.frac(m4);
    if (m5.getg() != 2) { testOK = false;  numTest = 14;  return numTest;    }
    if (m5.getd() != -3) { testOK = false;  numTest = 15; return numTest;    }
    cout << endl << endl << "Test Unit etvo::gd is SUCCESSFUL" << endl;
    cout << "-------------------------------------------------------------------" << endl;
    return numTest;
  }

  unsigned Test::Unit_polyWrapper()
  {     
    cout << endl << endl << "Test Unit etvo::poly" << endl;
    FactoryPoly factP(5, 4, false, gd(3, 3),10);
    
    poly p1;

    p1=poly(true);  //p1=Top equivalent to 1 monomial g-infd+inf (to keeps coherent with mmgd::poly)
    if (p1!=poly::Top()){ return 1; }
    if(!p1.isExtreme()) { return 1; }
    if(p1.size()!=1) { return 2; }
   if(p1[0]!=gd(global::_INF,global::INF)) { return 3; }

   p1 = poly(); //p1=eps equivalent to 1 monomial g+inf.d-inf (to keeps coherent with mmgd::poly)
   if (p1 != poly::Epsilon()) { return 4; }
   if (!p1.isExtreme()) { return 4; }
   if (p1.size() != 1) { return 5; }
   if (p1[0] != gd(global::INF, global::_INF)) { return 6; }
   
    p1 = poly(false); //p1=e equivalent to 1 monomial g0.d0 (to keeps coherent with mmgd::poly)
    if (p1 != poly::E()) { return 6; }
    if (p1.isExtreme()) { return 6; }
    if (p1.size() != 1) { return 7; }
    if (p1[0] != gd::E()) { return 8; }

    p1 = poly(gd(2, 3)); //constructor with a monomial
    if(!(p1.size()==1)) { return 9; }
    if (p1.isExtreme()) { return 9; }
    if (!(p1[0]== gd(2,3))) { return 10; }

    p1 = poly(3,4); //constructor with a monomial
    if (!(p1.size() == 1)) { return 11; }
    if (!(p1[0] == gd(3, 4))) { return 12; }

    vector<gd> v1 = { gd(2,3),gd(7,9),gd(5,7)};
    p1 = poly(v1); //constructor with a vector 
    if (!(p1.size() == 3)) { return 13; }
    if (!(p1[1] == gd(5, 7))) { return 14; }

    poly copy = p1;
    p1.add(gd(3, 5));
    p1.add(gd(6, 8));
    copy = copy + gd(3, 5);
    copy = copy + gd(6, 8);
    if (!(p1.size() == 5)) { return 15; }   
    // p1 is not simplified in this case
    p1.simpli();
    if (p1 != copy) return 15;    
    try {
      cout << p1[5] << endl;  //Exception thrown 
      return 16;
    }
    catch (const etvoException & ex)
    {     
		cout << ex.Message() << endl;
		cout << "Exception index overflow OK" << endl;
    }

    //mmgd::poly -> etvoII::poly ADD the ISterm part

    mmgd::poly pp1(mmgd::gd(global::INF, global::_INF));
    p1 = poly(pp1);
    PRINT(p1);
    if (p1 != poly::Epsilon()) { return 16; }
    if (!p1.isEpsilon()) { return 16; }

    pp1=mmgd::poly(mmgd::gd(global::_INF, global::INF));
    p1 = poly(pp1);
    PRINT(p1);
    if (p1 != poly::Top()) { return 16; }
    if (!p1.isTop()) { return 16; }

    pp1 = mmgd::poly(mmgd::gd(2,3));
    pp1.add(mmgd::gd(4, global::INF));
    pp1.simpli();
    p1 = poly(pp1);
    PRINT(p1);
    if (!p1.isDegenerate()) { return 16; }
    if(p1.isEpsilon()) { return 16; }
    if (p1.isTop()) { return 16; }
    if (p1.isExtreme()) { return 16; }



        
    //abnormal using but handled...
    p1 = gd(global::INF,global::_INF);   // p1<= epsilon
    if (p1 != poly::Epsilon()) { return 17; }
    if (!p1.isEpsilon()) { return 17; }

    p1 = gd(global::_INF, global::INF);  // p1<- top
    if (p1 != poly::Top()) { return 18; }
    if(!p1.isTop()) { return 18; }
    
    // very special cases !!!
    
    p1 = poly(gd(global::INF, global::INF));  // p1<-epsilon
    if (p1 != poly::Epsilon()) { return 19; }
    if (!p1.isEpsilon()) { return 19; }
    if(p1.isDegenerate()) { return 19; }

    p1 = gd(2, global::INF);  // p1 Not Extrem but degenerate
       if(!p1.isDegenerate()) { return 19; }
    if (p1.isEpsilon()) { return 19; }
    if (p1.isTop()) { return 19; }

    p1 = poly(gd(global::_INF,global::_INF));  //p1<-epsilon
    if (p1.isDegenerate()) return 19;
    if (!p1.isEpsilon()) return 19;
    
    p1 = poly(gd(global::_INF, 3)); //p1<-Top
    if (p1.isDegenerate()) return 19;
    if (!p1.isTop()) return 19;

    p1 = poly(gd(2, global::_INF));  //p1<-epsilon
    if (p1.isDegenerate()) return 19;
    if (!p1.isEpsilon()) return 19;

    p1 = poly(gd(global::INF, global::_INF));  // p1<-epsilon
    if (p1.isDegenerate()) return 19;
    if (!p1.isEpsilon()) return 19;

    p1 = poly(gd(global::INF, 3));  // p1<-epsilon
    if (p1.isDegenerate()) return 19;
    if (!p1.isEpsilon()) return 19;

    //-----------------------------------------------------------------
    vector<gd> v = { gd(global::INF, global::_INF) };   // p1<= epsilon
    p1 = poly(v);
    if (p1 != poly::Epsilon()) { return 17; }
    if (!p1.isEpsilon()) { return 17; }

    v = { gd(global::_INF, global::INF)};   // p1<= top
    p1 = poly(v); 
    if (p1 != poly::Top()) { return 18; }
    if (!p1.isTop()) { return 18; }

    // very special cases !!!
    v = { gd(global::INF, global::INF) };// p1<-epsilon
    p1 = poly(v);
    if (p1 != poly::Epsilon()) { return 19; }
    if (!p1.isEpsilon()) { return 19; }
    if (p1.isDegenerate()) { return 19; }

    v = { gd(2, global::INF) }; // p1 Not Extrem but degenerate
    p1 = poly(v);
    if (!p1.isDegenerate()) { return 19; }
    if (p1.isEpsilon()) { return 19; }
    if (p1.isTop()) { return 19; }

    v = { gd(global::_INF, global::_INF) };
    p1 = poly(v); //p1<-epsilon
    if (p1.isDegenerate()) return 19;
    if (!p1.isEpsilon()) return 19;

    v = { gd(global::_INF, 3) };
    p1 = poly(v);  //p1<-Top    
    if (p1.isDegenerate()) return 19;
    if (!p1.isTop()) return 19;


    v = { gd(2, global::_INF) };
    p1 = poly(v);  //p1<-epsilon 
    if (p1.isDegenerate()) return 19;
    if (!p1.isEpsilon()) return 19;

    v = { gd(global::INF, global::_INF) };// p1<-epsilon
    p1 = poly(v);     
    if (p1.isDegenerate()) return 19;
    if (!p1.isEpsilon()) return 19;

    v = { gd(global::INF, 3) }; // p1<-epsilon
    p1 = poly(v);     
    if (p1.isDegenerate()) return 19;
    if (!p1.isEpsilon()) return 19;
    
    //--------------------------------------------------------------------------
    poly p2 = factP.create();   
    gd m = p2[2];
    m = gd(m.getg(), global::INF);
    poly p3 = p2 + m;    
    if (!p3.isDegenerate()) return 20;
    p3 = p2 * p3;    
    if (!p3.isDegenerate()) return 20;

    poly p4 = factP.create();
    if(!(p4==p4))  return 21;
    if (p4 != p4)  return 21;
    if(!((p4+p4)==p4)) return 21;
    if (p4 != poly::E())
    {
      if(!((p4*p4)!=p4)) return 22;
      if(!(p4.frac(p4)==poly::E())) return 23;
    }

    vector<gd> v2 = { gd(global::_INF, 2) };    
    p1 = poly(v2); 
    if (!p1.isTop()) return 24;
    if (!p1.isExtreme()) return 24;
    if(p1.isDegenerate()) return 24;
    v2 = { gd(3,5),gd(4,global::INF),gd(1,3),gd(5,6)};
    p2 = poly(v2);
    if (p2.isTop()) return 25;
    if (p2.isEpsilon()) return 25;
    if (!p2.isDegenerate()) return 25;
    if (p2.size()!=3) return 25;




    cout << endl << endl << "Test Unit etvo::poly is SUCCESSFUL" << endl;
    cout << "-------------------------------------------------------------------" << endl;
    return 0;
  }
   

  bool Test::Regular_polyWrapper(unsigned nbIter,unsigned char TST)
  {
    cout << endl << endl << "Test Regular etvo::poly" << endl;
	cout << "Tests activated =";
	if (TST&global::TST_XIS) cout << "TST_XIS";
	if (TST&global::TST_IS) cout << "TST_IS";
	if (TST&global::TST_RESIDUEQ) cout << "TST_RESIDUEQ";
	if (TST&global::TST_RESIDUINEQ) cout << "TST_RESIDUINEQ";
	if (TST&global::TST_KLEENE) cout << "TST_KLEENE";
	cout << endl;

    bool success = true;
    unsigned  j = 0;
    unsigned int nbSamples = (unsigned int)(sqrt(nbIter) + 1);
    FactoryPoly fPoly(Test::nbTermsInFactory,8,false,gd(0, 0), 30);
    vector<poly> vP = fPoly.createN(2*nbSamples);
	/*
    for(unsigned i=0;i<(unsigned)std::min(10,(int)vP.size());i++)
    { 
      PRINT(vP[i]);
    }*/

    while (j < nbIter && success)
    {
      int idxa, idxb, idxc, idxd;
      idxa = randGen::uni_int(0, (int)(vP.size() - 1));
      idxb = randGen::uni_int(0, (int)(vP.size() - 1));
      idxc = randGen::uni_int(0, (int)(vP.size() - 1));
      idxd = randGen::uni_int(0, (int)(vP.size() - 1));
      poly & a = vP[idxa];
      poly & b = vP[idxb];
      poly & c = vP[idxc];
      poly & d = vP[idxd];    

      if(TST&global::TST_XIS)   success &= TestXIS<poly>::TestAll(a);
      if (TST&global::TST_IS) success &= TestIS<poly>::TestAll(a, b, c);
      if(TST&global::TST_RESIDUEQ) success &= TestResiduation<poly>::TestAll(a, b, c, d);
      if (TST&global::TST_RESIDUINEQ)success &= TestResiduationIneq<poly>::TestAll(a, b, c, d);
      cout << "->";
      j++;
    }
    if(success) 
      cout << endl << endl << "Test Regular etvo::poly is SUCCESSFUL" << endl;
    cout << "-------------------------------------------------------------------" << endl;
    return success;
  }

  unsigned  Test::Unit_serieWrapper()
  {
    // poly generator
    FactoryPoly factP(5, 4, false, gd(3, 3), 10);

    cout << endl << endl << "Test Unit etvo::series" << endl;
    
    cout << "epsilon representation" << endl;
    series s1;
    PRINT(s1);
    PRINT(s1.getP());
    PRINT(s1.getQ());
    PRINT(s1.getR());
    if (s1 != series::Epsilon()) { return 1; }    
    if(!s1.isEpsilon()) { return 1; }
    if (!s1.isExtreme()) { return 1; }
    if(s1.getP()!=poly::Epsilon()) return 1;
    if(s1.getQ() != poly::Epsilon()) return 1;
    if (s1.getQ() != poly::Epsilon()) return 1;

    cout << "e representation" << endl;
    s1 = series::E();
    PRINT(s1);
    PRINT(s1.getP());
    PRINT(s1.getQ());
    PRINT(s1.getR());
    if(!s1.isPoly()) { return 4; }
    if (!s1.isE()) { return 4; }
    if (s1.isExtreme()) { return 4; }
    if (s1.getP() != poly::Epsilon()) return 4;
    if (s1.getQ() != poly::E()) return 4;
    if (s1.getQ() != poly::E()) return 4;

    cout << "Top representation" << endl;
    s1 = series::Top();
    PRINT(s1);
    if (s1.isE()) { return 5; }
    if (!s1.isPoly()) { return 5; }
    if (!s1.isTop()) { return 5; }
    if (!s1.isExtreme()) { return 5; }
    PRINT(s1.getP());
    PRINT(s1.getQ());
    PRINT(s1.getR());
    
    cout << "Monomial/Polynomial representation" << endl;
    s1 = series(gd(3, 4));
    PRINT(s1);
    PRINT(s1.getP());
    PRINT(s1.getQ());
    PRINT(s1.getR());

    if (s1.isE()) { return 6; }
    if (!s1.isPoly()) { return 6; }
    if (s1.isTop()) { return 6; }
    if (s1.isExtreme()) { return 6; }

    s1 = series(gd(3, 4)+gd(5,8));
    PRINT(s1);
    PRINT(s1.getP());
    PRINT(s1.getQ());
    PRINT(s1.getR());
    if (s1.isE()) { return 6; }
    if (!s1.isPoly()) { return 6; }
    if (s1.isTop()) { return 6; }
    if (s1.isExtreme()) { return 6; }


    // problem in mmgd::serie
    cout << "Some bugs in mmgd::serie" << endl;
    mmgd::poly pp(mmgd::gd(3, 4));
    pp.add(mmgd::gd(5, global::INF));
    mmgd::serie ss(pp);
    mmgd::gd me(0, 0),md(0,1);
    PRINT(ss);   
    ss = mmgd::serie(pp, pp, me);
    //ss.canon();
    PRINT(ss);  
    ss = mmgd::serie(pp, pp, md);
    //ss.canon();
    PRINT(ss);      
    ss= mmgd::serie(pp, mmgd::gd(5, global::INF),me);
    //ss.canon();
    PRINT(ss);   
    ss = mmgd::serie(pp, mmgd::gd(5, global::INF), md);
    //ss.canon();
    PRINT(ss);
    pp= mmgd::poly(mmgd::gd(3, 4));
    ss = mmgd::serie(pp, mmgd::gd(5,6),md);
    //ss.canon();
    PRINT(ss);
   

    cout << "Monomial/Polynomial degenerate representation" << endl;
    s1 = series(gd(3, global::INF));
    PRINT(s1);    
    if (s1.isE()) { return 7; }
    if (s1.isPoly()) { return 7; }
    if (s1.isTop()) { return 7; }
    if (s1.isExtreme()) { return 7; }
    if(!s1.isDegenerate()) { return 7; }

    s1 = series(gd(8, global::INF)+gd(1,2)+gd(3,4));
    PRINT(s1);
    if (s1.isE()) { return 7; }
    if (s1.isPoly()) { return 7; }
    if (s1.isTop()) { return 7; }
    if (s1.isExtreme()) { return 7; }
    if (!s1.isDegenerate()) { return 7; }
    
    s1 = series(poly::E());   
    if (!s1.isE()) { return 7; }
    if (!s1.isPoly()) { return 7; }
    s1 = series(poly::Epsilon());
    if(!s1.isEpsilon()) { return 7; }
    s1 = series(poly::Top());
    if (!s1.isTop()) { return 7; }
        

    mmgd::gd per(2, 3);
    cout << "Series construction from mmgd::serie" << endl;
    ss = mmgd::serie(mmgd::poly(), mmgd::poly(), me);
    s1 = series(ss);
    if (!s1.isEpsilon()) { return 8; }
    ss = mmgd::serie(mmgd::poly(), mmgd::poly(), per);
    s1 = series(ss);
    if (!s1.isEpsilon()) { return 8; }
    ss = mmgd::serie(mmgd::poly(mmgd::gd(global::INF,global::_INF)), mmgd::poly(), me);
    s1 = series(ss);
    if (!s1.isEpsilon()) { return 8; }

    per = mmgd::gd(2, 1);
    ss = mmgd::serie(mmgd::poly(),mmgd::gd(global::_INF,global::INF),per);    
    s1 = series(ss);
    if (!s1.isTop()) { return 9; }
    ss = mmgd::serie(mmgd::gd(global::_INF, global::INF),mmgd::poly(), per);
    s1 = series(ss);
    if (!s1.isTop()) { return 9; }

    ss = mmgd::serie(factP.create(), mmgd::poly(), md);    
    s1 = series(ss);
    if(!s1.isPoly()) { return 9; }

    mmgd::poly pol = factP.create();
    ss = mmgd::serie(pol, pol.getpol(pol.getn()-1), md);
    s1 = series(ss);   
    if (!s1.isDegenerate()) { return 9; }

    cout << "Series construction " << endl;
    series s3 = series(poly(), poly(), gd(0, 0));
    if (!s3.isEpsilon()) { return 10; }
    s3 = series(poly(), poly(), gd(2, 3));
    if (!s3.isEpsilon()) { return 10; }
    s3 = series(gd(global::INF, global::_INF), poly(), gd(0, 0));
    if (!s3.isEpsilon()) { return 10; }

    s3 = series(poly(),gd(global::_INF, global::INF), gd(2, 1));
    if (!s3.isTop()) { return 10; }

    s3 =series(gd(global::_INF, global::INF), poly(), gd(2, 1));
    if (!s3.isTop()) { return 10; }
    s3 = series(factP.create(), poly(), gd(0, 1));
    if (!s3.isPoly()) { return 10; }

    poly pl = factP.create();
    s3 =series(pl, pl[pl.size() - 1], gd(0, 1));    
    if (!s3.isDegenerate()) { return 10; }
    
    series s2(poly::Epsilon(), poly::Epsilon(), gd());
    if (!s2.isEpsilon()) return 10;

    s1 = series::E();
    if (s1.getP() != poly::Epsilon()) return 11;
    if (s1.getQ() != poly::E()) return 11;
    if (s1.getQ() != poly::E()) return 11;

    s2 = series(poly::Epsilon(), poly::E(), gd());
    if (s2 != series::E()) return 11;
    s2 = series(poly::E(), poly::Epsilon(), gd());
    if (s2 != series::E()) return 11;
    s2 = series(poly::E(), poly::E(), gd());
    if (s2 != series::E()) return 11;
    s2 = series(poly::Epsilon(), poly::E(), gd(1,0));
    if (s2 != series::E()) return 11;

    poly p = factP.create();
    s1 = series(p);
    if (!s1.isPoly()) return 12;
    s2 = series(poly::Epsilon(), p, gd());
    if (s2 != s1) return 12;
    if (!s2.isPoly()) return 12;
    s2=series(p,poly::Epsilon(),gd(1,0));
    if (s2 != s1) return 12;
    if (!s2.isPoly()) return 12;
        
	cout << "Star unit tests" << endl;
	
		poly p5;
		p5 = poly({ gd(0,1) });
		series s5 = p5.star();
		if (!s5.isDegenerate()) return 13;
		p5 = poly(vector<gd>({ gd(0,3),gd(4,6) }));
		s5 = p5.star();
		if (!s5.isDegenerate()) return 13;
		
	try 
	{
		p5 = poly(gd(-1, 0));
		s5 = p5.star();
		return 14;
	}
	catch (const etvoException & ex)
	{		
		cout << ex.Message() << endl;
		cout << "Exception OK" << endl;
	}
	
    cout << endl << endl << "Test Unit etvo::series is SUCCESSFUL" << endl;
    cout << "-------------------------------------------------------------------" << endl;
    return 0;
  }

  bool Test::Regular_serieWrapper(unsigned nbIter,unsigned char TST)
  {
    cout << endl << endl << "Test Regular etvo::series" << endl;
	cout << "Tests activated =";
	if (TST&global::TST_XIS) cout << "TST_XIS,";
	if (TST&global::TST_IS) cout << "TST_IS,";
	if (TST&global::TST_RESIDUEQ) cout << "TST_RESIDUEQ,";
	if (TST&global::TST_RESIDUINEQ) cout << "TST_RESIDUINEQ,";
	if (TST&global::TST_KLEENE) cout << "TST_KLEENE,";
	cout << endl;

    bool success = true;
    unsigned  j = 0;
    unsigned nbSamples = (unsigned)sqrt(nbIter) + 1;
    FactorySeries factory(Test::nbTermsInFactory,gd(Test::gainInFactory,Test::gainInFactory), false, 10, false, gd(2, 3), 10);
    vector<series> vS=factory.createN(2*nbSamples);
	FactorySeries factoryK(Test::nbTermsInFactory, gd(Test::gainInFactory, Test::gainInFactory), false, 7, true, gd(0,0), 3);
	vector<series> vSK = factoryK.createN(2 * nbSamples);	
	
	cout << "samples ..." << endl;
    for (unsigned i = 0; i<(unsigned)std::min(10, (int)vS.size()); i++)
    {	 
      PRINT(vS[i]);
	  PRINT(vSK[i]);
    }

	while (j < nbIter && success)
	{
		int idxa, idxb, idxc, idxd;
		idxa = randGen::uni_int(0, (int)(vS.size() - 1));
		idxb = randGen::uni_int(0, (int)(vS.size() - 1));
		idxc = randGen::uni_int(0, (int)(vS.size() - 1));
		idxd = randGen::uni_int(0, (int)(vS.size() - 1));
		series & a = vS[idxa];
		series & b = vS[idxb];
		series & c = vS[idxc];
		series & d = vS[idxd];
		series & ka = vSK[idxa];
		series & kb = vSK[idxb];
		if (TST&global::TST_XIS)success &= TestXIS<series>::TestAll(a);
		if (TST&global::TST_IS)success &= TestIS<series>::TestAll(a, b, c);
		if (TST&global::TST_RESIDUEQ) success &= TestResiduation<series>::TestAll(a, b, c, d);
		if (TST&global::TST_RESIDUINEQ) success &= TestResiduationIneq<series>::TestAll(a, b, c, d);
		if (TST&global::TST_KLEENE) success = TestKleene<etvo::series>::TestAll(ka, kb);
		cout << "->";
		j++;
	}

    if(success)
    cout << endl << endl << "Test Regular etvo::series is SUCCESSFUL" << endl;
    cout << "-------------------------------------------------------------------" << endl;
    return success;
  }
}