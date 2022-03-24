#include "../Test.h"
#include<iostream>
#include "../Test.h"
//#include "../../parsers/parser.h"
#include "../factory/FactoryPolyEd.h"

using namespace std;
using namespace etvo;

namespace test
{
	unsigned Test::Unit_Ed()
	{
		cout << endl << endl << "Test Unit Ed" << endl;
		
		gNg::setCanonForm(0); //left form
		Ed m1;	
		if (m1 != Ed::E()) return 1; 
		m1=Ed(2,3);
		if (m1.getE_op() != E_op::Gamma(2)) return 2;;
		if (m1.getD() != 3) return 3;;
		m1 = Ed(2,3,4,1,3);
		if (m1.getE_op() != E_op(gNg(2,3,4,1))) return 4;
		if (m1.getE_op() != gNg(2, 3, 4, 1)) return 4;
		if (m1.getD() != 3) return 5;
		m1 = Ed(2, 3,1,4);
		if (m1.getE_op() != E_op(gNg(2, 3,1))) return 6;
		if (m1.getD() != 4) return 7;

		m1.setE_op(gNg(1, 2, 3, 4));
		if (m1.getE_op() != E_op(gNg(3,2,3,1))) return 7;
		m1.setD(17);
		if (m1.getD() != 17) return 8;
		unsigned m, b;
		m1.getGain(m, b);
		if (m!= 2) return 9;
		if (b != 3) return 9;
		Ed m2 = m1 * Ed(1, 0);
		if (m2.getE_op() != gNg(3, 2, 3, 2)) return 10;
		m2 = Ed(1, 0)*m1;
		if (m2.getE_op() != gNg(4, 2, 3, 1)) return 10;
		
		Fminp::setAutoReduction(false);
		m2.setE_op(m2.getE_op().extendBy(3));
		if (m2.getE_op().getTerms().size() != 3) return 11;
		Fminp::setAutoReduction(true);
		m2.canon();
		if (m2.getE_op().getTerms().size() != 1) return 12;

    m1 = Ed(1, 2, 3, 2, 3);
    m2= Ed(1, 4, 5, 2, 4);
    if ((m1*m2) != (m1.otimes(m2))) return 13;

    polyEd p = Ed(0, 3, 2, 2) + Ed(2, 3, 0, 4) + Ed(1, 3, 1, 7);
    if (p[0] != Ed(0, 2)) return 14;
    p = Ed(4, 9) + p;
    if (p.size() != 4) return 15;
    if (!(Ed(2, 3, 0, 4) == Ed(2, 3, 0, 4))) return 16;

	m1 = Ed(gNg(3, 2, 3, 5),5);   // g3.m2.b3.g5.d5	
	gNg::setCanonForm(0);   // left form
	cout << m1.toString() << endl;  // g5.m2.b3.g2.d5
	gNg::setCanonForm(1);  // central form
	cout << m1.toString() << endl;  // g1.m2.g2.b3.g2.d5
	gNg::setCanonForm(2);	// right form
	cout << m1.toString() << endl;  //g1.m2.b3.g8.d5

	m1 = Ed(E_op::MuVar({ 2,1 }),3);
	cout << m1.toString()<< endl;
	cout << m1.toStringAsMuVar() << endl;

	cout << endl << endl << "Test Unit etvo::Ed is SUCCESSFUL" << endl;
	cout << "-------------------------------------------------------------------" << endl;	
	return 0;
	}

  unsigned Test::Unit_polyEd()
  {
	  cout << endl << endl << "Test Unit polyEd" << endl;
	  gNg::setCanonForm(0);
	  FactoryPolyEd factP(3,4,5,3,false,true,gd(2, 3));
	  polyEd p1;
	  if (!p1.isEpsilon()) return 1;
	  cout << p1.size() << endl;

	  p1 = polyEd::Epsilon();
	  if (!p1.isEpsilon()) return 2;
	  p1 = polyEd::E();
	  if (!p1.isE()) return 3;
	  p1 = polyEd::Top();
	  if (!p1.isTop()) return 4;

	  p1 = polyEd(true);
	  if (!p1.isTop()) return 5;
	  p1 = polyEd(false);
	  if (!p1.isE()) return 6;

	  p1 = polyEd(Ed(gNg(3, 2, 3, 5), 4));
	  if (p1.size() != 1) return 7;
	  if (p1[0] != Ed(gNg(3, 2, 3, 5), 4)) return 7;
	  try {
		  cout << p1[1] << endl;
		  return 8;
	  }
	  catch (const std::exception & ex)
	  {
		  cout << ex.what() << endl;
		  cout << "Exception on index overflow OK" << endl;
	  }

	  std::vector<Ed> vect;
	  vect.push_back(Ed(gNg(5, 2, 1), 6));
	  vect.push_back(Ed(gNg(2, 2, 1), 2));
	  vect.push_back(Ed(gNg(3, 2, 0), 4));
	  p1 = polyEd(vect);
	  cout << p1 << endl;
	  if (!p1.isCanon()) return 8;
	  return 0;
  }
  bool Test::Specific_polyEd(unsigned nbIter)
  {
    cout << endl << endl << "Test Specific polyEd" << endl;
    bool success = true;
    unsigned i = 0;
    //FactoryPolyEd factP(12, 17, 23, 7, true, true, gd(2, 3));
	FactoryPolyEd factP(Test::nbTermsInFactory,Test::gainInFactory,Test::gainInFactory+3,7,true,true, gd(2, 3));

    i = 0;
    while (i < nbIter && success)
    {
      polyEd poly1 = factP.create();
      polyEd poly2 = factP.create();
      polyEd poly3 = poly1 + poly2;

      if (!(poly1<=poly3) || !(poly2 <= poly3))
      {
        cout << "problem!" << endl;
        cout << poly1 << endl;
        cout << poly2 << endl;
        cout << poly3 << endl;   
        success = false;
      }
      i++;
      cout << "->";
    }
	i = 0;
    while (i < nbIter && success)
    {
      polyEd poly = randGen::Rand_polyEd(3, 4, 8);
      Ed m = randGen::Rand_Ed(5, 6);
      polyEd res = poly * m;
      if (!res.isCanon())
      {
        cout << "problem!" << endl;
        cout << poly << endl;
        cout << res << endl;
      }
      i++;
    }

    i = 0;
    while (i < nbIter && success)
    {
      polyEd poly1 = randGen::Rand_polyEd(3, 4, 8);
      polyEd poly2 = randGen::Rand_polyEd(3, 4, 8);
      
      
      polyEd res = poly1 * poly2;
      if (!res.isCanon())
      {
        cout << "problem!" << endl;
        cout << poly1 << endl;
        cout << poly2 << endl;
        cout << res << endl;

      }
      i++;
    }

    i = 0;
    while (i < nbIter && success)
    {
      unsigned int dp = randGen::uni_int(1, 5);
      unsigned int codp = randGen::uni_int(1, 5);
      unsigned nbTerms = randGen::uni_int(5, 13);
      int g = 1;
      int d = 2;
      vector<Ed> v;
      for (unsigned k = 0; k < nbTerms; k++)
      {
        Ed m = randGen::Rand_Ed_fixedG(dp, codp, g, d);      
        g=g+ randGen::uni_int(0, 4);
        d = d + randGen::uni_int(0, 4);
        v.push_back(m);      
      }
      random_shuffle(v.begin(), v.end());
      vector<Ed> v1(v.begin(), v.begin() + (nbTerms / 2));
      vector<Ed> v2(v.begin() + (nbTerms / 2), v.end());

      polyEd p1(v);

      if (!p1.isCanon())
      {
        cout << "Problem !" << endl;
        cout << "p1 not canonical" << p1 << endl;
      }
      polyEd p2;
      for (Ed m : v){    p2 = p2 + m; }
      polyEd p3(v1);
      polyEd p4(v2);
     
     // cout << "p1=" << p1 << endl;
      if (!(p1 == p2))
      {
        cout << "Test specific polyEd" << endl;
        cout << "p1=" << p1 << endl;
        cout << "p2=" << p2 << endl;
        success = false;
      }

      if (!(p1 == (p3+p4)))
      {
        cout << "Test specific polyEd" << endl;
        cout << "p1=" << p1 << endl;
        cout << "p3=" << p3 << endl;
        cout << "p4=" << p4 << endl;
        cout << "p3+p4=" << (p3+p4) << endl;
        success = false;
      }
      i++;
    }
    
    i = 0;
    while (i < nbIter && success)
    {
      polyEd poly = randGen::Rand_polyEd(3, 4, 8);     
      vector<Ed> v = poly.getTerms();    

      Ed m1(v.front()*Ed::g(1)*Ed::d(-2));
      Ed m2(v.back()*Ed::g(1)*Ed::d(-1));
      v.push_back(m1);
      v.push_back(m2);
      random_shuffle(v.begin(), v.end());    

      vector<Ed> v1(v.begin(), v.begin() + 3);
      vector<Ed> v2(v.begin()+3, v.end());
      polyEd p1(v1);
      polyEd p2(v2);    
      //cout << "poly=" << poly << endl;
      if (!(poly==(p1+ p2)))
      {
        cout << "Test specific polyEd" << endl;
        cout << "poly=" << poly << endl;
        cout << "p1=" << p1 << endl;
        cout << "p2=" << p2 << endl;
        cout << "p1+p2="<< (p1 + p2) << endl;
        cout << "Problem !" << endl;
        success = false;
      }     
      i++;
    }
    
    i = 0;
    while (i < nbIter && success)
    {
      polyEd poly = randGen::Rand_polyEd(3, 4, 8);
      vector<Ed> v = poly.getTerms();
     Ed m1(v.front()*Ed::g(1)*Ed::d(-2));
      Ed m2(v.back()*Ed::g(1)*Ed::d(-1));
      v.push_back(m1);
      v.push_back(m2);
      random_shuffle(v.begin(), v.end());
      polyEd p;
      for (Ed m : v)
      {
        p = p + m;
      }
      if (!(p == poly))
      {
        cout << "problem" << endl;
        success = false;
      }
      i++;
    }

	success=success && Test::TestPolyEd::TestOplus(nbIter);
	success = success && Test::TestPolyEd::TestOplusPP(nbIter);
	success = success && Test::TestPolyEd::TestOtimesPP(nbIter);
	success = success && Test::TestPolyEd::TestCompFrac(nbIter);
	success = success && Test::TestPolyEd::TestCompInfCD(nbIter);
	success = success && Test::TestPolyEd::TestCompOplusCD(nbIter);
	success = success && Test::TestPolyEd::TestCompOtimesCD(nbIter);


    return success;
  }


  bool Test::Regular_polyEd(unsigned nbIter,unsigned short TST)
  {    
    cout << "Test Regular etvo::polyEd " << endl;
    bool success = true;
    unsigned j = 0;
    int dP = randGen::uni_int(2,Test::gainInFactory);
    int codP = randGen::uni_int(2, Test::gainInFactory);
    unsigned nbTerms = randGen::uni_int(1,Test::nbTermsInFactory);
    FactoryPolyEd factFixeG(nbTerms,dP,codP,4,true, false, gd(0, 0), 10,Test::percentEpsInFactory);
    nbTerms = randGen::uni_int(1, 10);
    FactoryPolyEd factVarG(nbTerms, dP, codP,4,false,false, gd(0, 0), 10, Test::percentEpsInFactory);
    int nbSamples = (int)(sqrt(nbIter) + 1);
    vector<polyEd> vP1,vP2;
    vP1 = factFixeG.createN(2 * nbSamples);
    vP2= factVarG.createN(2 * nbSamples);
   
    cout << "Samples" << endl;
    for (int i = 0; i<std::min(5, (int)vP1.size()); i++)
    {
      PRINT(vP1[i]);
    }
    cout << "Samples" << endl;
    for (int i = 0; i<std::min(5, (int)vP2.size()); i++)
    {
      PRINT(vP2[i]);
    }
    while (j < nbIter && success)
    {
      int idxa, idxb, idxc, idxd;
      idxa= randGen::uni_int(0, (int)vP1.size()-1);
      idxb = randGen::uni_int(0, (int)vP1.size() - 1);
      idxc = randGen::uni_int(0, (int)vP2.size() - 1);
      idxd = randGen::uni_int(0, (int)vP2.size() - 1);
      polyEd & a = vP1[idxa];
      polyEd & b = vP1[idxb];
      polyEd & c = vP2[idxc];
      polyEd & d = vP2[idxd];
      
      if(TST&global::TST_XIS && j<20) success &= TestXIS<polyEd>::TestAll(a);
      if (TST&global::TST_IS) success &= TestIS<polyEd>::TestAll(a, b, c);
      if (TST&global::TST_RESIDUEQ) success &= TestResiduation<polyEd>::TestAll(a, b, c, d);
      if (!success) break;
      if (TST&global::TST_RESIDUINEQ) success &= TestResiduationIneq<polyEd>::TestAll(a, b, c, d);
      if (!success) break;
      cout << "->";
      if ((j % 100) == 0) cout << j << endl;
      j++;
    }
	if (success)
		cout << endl << endl << "Test Regular etvo::polyEd is SUCCESSFUL" << endl;
	cout << "-------------------------------------------------------------------" << endl;
    return success;
  }
}