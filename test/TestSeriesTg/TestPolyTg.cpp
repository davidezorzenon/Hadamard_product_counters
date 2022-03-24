#include<iostream>
#include "../Test.h"
#include "../../parsers/parser.h"
#include "../factory/FactoryPolyTg.h"

using namespace std;
using namespace etvo;

namespace test
{
	unsigned Test::Unit_Tg()
	{
		cout << endl << endl << "Test Unit Tg" << endl;
		
		dDd::setCanonForm(0); //left form
		Tg m1;	
		if (m1 != Tg::E()) return 1; 
    cout << m1 << endl;
    cout << "g2=" << Tg::g(2) << endl;
    cout << "d3=" << Tg::d(3) << endl;
    cout << "D4=" << Tg::D(4) << endl;

        
		m1=Tg(2,3);    
		if (m1.getT_op() != T_op::delta(2)) return 2;
		if (m1.getG() != 3) return 3;

		m1 = Tg(2,3,4,5);
		if (m1.getT_op() != T_op(dDd(2,3,4))) return 4;
		if (m1.getT_op() != dDd(2, 3, 4)) return 4;
		if (m1.getG() != 5) return 5;
        
		m1.setT_op(dDd(1, 2, 3));
		if (m1.getT_op() != T_op(dDd(1,2,3))) return 7;
		m1.setG(17);
		if (m1.getG() != 17) return 8;
		unsigned mb;
    m1.getGain(mb);    
		if (mb!= 2) return 9;
    
		Tg m2 = m1 * Tg(1, 0);
		if (m2.getT_op() != dDd(1, 2, 4)) return 10;
		m2 = Tg(1, 0)*m1;
		if (m2.getT_op() != dDd(2, 2, 3)) return 10;
		
		Fminp::setAutoReduction(false);
		m2.setT_op(m2.getT_op().extendBy(3));
		if (m2.getT_op().getTerms().size() != 3) return 11;
		Fminp::setAutoReduction(true);
		m2.canon();
		if (m2.getT_op().getTerms().size() != 1) return 12;

    m1 = Tg(1, 2, 3, 4);
    m2= Tg(1, 4, 5, 2);
    if ((m1*m2) != (m1.otimes(m2))) return 13;
    
    polyTg p = Tg(0, 3, 2, 2) + Tg(2, 3, 0, 4) + Tg(1, 3, 1, 7);
    if (p[2] != Tg(4,7)) return 14;

    p = Tg(6, 11) + p;
    cout << p << endl;
    if (p.size() != 4) return 15;
    if (!(Tg(2, 3, 0, 4) == Tg(2, 3, 0, 4))) return 16;

	m1 = Tg(dDd(3, 2, 3),5);   // d3.D2.d3.g5	
	dDd::setCanonForm(0);   // left form
	cout << m1.toString() << endl;  
	dDd::setCanonForm(1);  // central form
	cout << m1.toString() << endl;  
	dDd::setCanonForm(2);	// right form
	cout << m1.toString() << endl;  

	m1 = Tg(T_op::deltaVar({ 2,1 }),3);
	cout << m1.toString()<< endl;
	cout << m1.toStringAsDeltaVar() << endl;
  
	cout << endl << endl << "Test Unit etvo::Tg is SUCCESSFUL" << endl;
	cout << "-------------------------------------------------------------------" << endl;	
	return 0;
	}
  
  unsigned Test::Unit_polyTg()
  {
	  cout << endl << endl << "Test Unit polyTg" << endl;
    
	  dDd::setCanonForm(0);
	  FactoryPolyTg factP(3,4,5,false,true,gd(2, 3));
	  polyTg p1;
	  if (!p1.isEpsilon()) return 1;
	  cout << p1.size() << endl;

	  p1 = polyTg::Epsilon();
	  if (!p1.isEpsilon()) return 2;
	  p1 = polyTg::E();
	  if (!p1.isE()) return 3;
	  p1 = polyTg::Top();
	  if (!p1.isTop()) return 4;

	  p1 = polyTg(true);
	  if (!p1.isTop()) return 5;
	  p1 = polyTg(false);
	  if (!p1.isE()) return 6;

	  p1 = polyTg(Tg(dDd(3, 2, 3, 5), 4));
	  if (p1.size() != 1) return 7;
	  if (p1[0] != Tg(dDd(3, 2, 3, 5), 4)) return 7;
	  try {
		  cout << p1[1] << endl;
		  return 8;
	  }
	  catch (const std::exception & ex)
	  {
		  cout << ex.what() << endl;
		  cout << "Exception on index overflow OK" << endl;
	  }

	  std::vector<Tg> vect;
	  vect.push_back(Tg(dDd(5, 2, 1), 6));
	  vect.push_back(Tg(dDd(2, 2, 1), 2));
	  vect.push_back(Tg(dDd(3, 2, 0), 4));
	  p1 = polyTg(vect);
	  cout << p1 << endl;
	  if (!p1.isCanon()) return 8;
    
    cout << endl << endl << "Test Unit etvo::polyTg is SUCCESSFUL" << endl;
    cout << "-------------------------------------------------------------------" << endl;
	  return 0;
  }

  /*
  bool Test::Specific_polyEd(unsigned nbIter)
  {
    cout << endl << endl << "Test Specific polyEd" << endl;
    bool success = true;
    unsigned i = 0;
    FactoryPolyEd factP(12, 17, 23, 7, true, true, gd(2, 3));
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
    cout << endl<<"----------------------------------------------------" << endl;
    cout << "Test Regular polyEd #iter=" << nbIter << endl;
    bool success = true;
    unsigned j = 0;
    int dP = randGen::uni_int(3, 20);
    int codP = randGen::uni_int(3,20);
    unsigned nbTerms = randGen::uni_int(1,10);
    FactoryPolyEd factFixeG(nbTerms,dP,codP,4,true, false, gd(0, 0), 10);
    nbTerms = randGen::uni_int(1, 10);
    FactoryPolyEd factVarG(nbTerms, dP, codP,4,false,false, gd(0, 0), 10);
    int nbSamples = (int)(sqrt(nbIter) + 1);
    vector<polyEd> vP1,vP2;
    vP1 = factFixeG.createN(2 * nbSamples);
    vP2= factVarG.createN(2 * nbSamples);
   
    /*cout << "Samples1 =" << endl;
    for (int i = 0; i<std::min(5, (int)vP1.size()); i++)
    {
      PRINT(vP1[i]);
    }
    cout << "Samples2 =" << endl;
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
    return success;
  }*/
}