#include <iostream>
#include<algorithm>

#include "../Test.h"
//#include "../../parsers/parser.h"
#include "../factory/FactoryPolyTg.h"

using namespace std;
using namespace etvo;

namespace test
{
  bool Test::Specific_polyTg(unsigned nbIter)
  {
    cout << endl << endl << "Test SPecific polyTg" << endl;
    
    bool success = true;
    unsigned i = 0;

    i = 0;
    while (i < nbIter && success)
    {
      polyTg poly = randGen::Rand_polyTg(3,8);
      Tg m = randGen::Rand_Tg(5);
      polyTg res = poly * m;    
      if (!res.isCanon())
      {
        cout << "problem! poly*m not canonical" << endl;
        cout << poly << endl;
        cout << m << endl;
        cout << "res=" << res << endl;
        res=poly * m;       
        success = false;
      }
      i++;
    }

    i = 0;
    while (i < nbIter && success)
    {
      polyTg poly1 = randGen::Rand_polyTg(4, 8);
      polyTg poly2 = randGen::Rand_polyTg(4, 8);
      
      polyTg res = poly1 * poly2;
      if (!res.isCanon())
      {
        cout << "problem!" << endl;
        cout << poly1 << endl;
        cout << poly2 << endl;
        cout << res << endl;
        success = false;
      }
      i++;
    }


    i = 0;
    while (i < nbIter && success)
    {
      unsigned int dp = randGen::uni_int(1, 5);      
      unsigned nbTerms = randGen::uni_int(5, 13);
      int g = 1;
      int d = 2;
      vector<Tg> v;
      for (unsigned k = 0; k < nbTerms; k++)
      {
        Tg m = randGen::Rand_Tg_fixedG(dp, g, d);
        g = g + randGen::uni_int(0, 4);
        d = d + randGen::uni_int(0, 4);
        v.push_back(m);     
      }
      random_shuffle(v.begin(), v.end());
      polyTg p1(v);
      //cout << p1 << endl;
      if (!p1.isCanon())
      {
        cout << "Problem !" << endl;
        cout << "p1 not canonical" << p1 << endl;
        success = false;
      }
      polyTg p2;
      for (Tg m : v) { p2 = p2 + m; }
      vector<Tg> v1(v.begin(), v.begin() + (nbTerms / 2));
      vector<Tg> v2(v.begin() + (nbTerms / 2), v.end());
      polyTg p3(v1);
      polyTg p4(v2);
           
      if (!(p1 == p2))
      {
        cout << "Test specific polyTg" << endl;
        cout << "p1=" << p1 << endl;
        cout << "p2=" << p2 << endl;
        success = false;
      }

      if (!(p1 == (p3 + p4)))
      {
        cout << "Test specific polyTg" << endl;
        cout << "p1=" << p1 << endl;
        cout << "p3=" << p3 << endl;
        cout << "p4=" << p4 << endl;
        cout << "p3+p4=" << (p3 + p4) << endl;
        success = false;
      }
      i++;
    }    

    i = 0;
    while (i < nbIter && success)
    {
      polyTg poly = randGen::Rand_polyTg(5, 8);
      vector<Tg> v = poly.getTerms();
      Tg m1(Tg::d(-2)*Tg::g(1)*v.front());
      Tg m2(Tg::d(-1)*Tg::g(1)*v.back());
      v.push_back(m1);
      v.push_back(m2);
      random_shuffle(v.begin(), v.end());

      vector<Tg> v1(v.begin(), v.begin() + 3);
      vector<Tg> v2(v.begin() + 3, v.end());
      polyTg p1(v1);
      polyTg p2(v2);
      polyTg p3(v);   
            
      if (!(poly == (p1 + p2)))
      {
        cout << "Test specific polyTg" << endl;
        cout << "poly=" << poly << endl;
        cout << "p1=" << p1 << endl;
        cout << "p2=" << p2 << endl;
        cout << "p1+p2=" << (p1 + p2) << endl;
        cout << "Problem !" << endl;
        success = false;
      }

      polyTg p;
      for (Tg m : v)
      {
        p = p + m;
      }
      if (!(p == poly))
      {
        cout << "problem" << endl;
        cout << "poly=" << poly << endl;
        cout << "p=" << p << endl;
        success = false;
      }
      i++;
    }
    return success;
  }

  bool Test::Regular_polyTg(unsigned nbIter,unsigned short TST)
  {
    cout << endl << endl << "Test Regular etvo::polyTg " << endl;
    bool success = true;
    unsigned i = 0;   
    int nbSamples = sqrt(nbIter) + 1;
    int dP = randGen::uni_int(1, Test::gainInFactory);
    FactoryPolyTg fact(Test::nbTermsInFactory,dP,4,false,false,gd(0, 0),10,Test::percentEpsInFactory);
    vector<polyTg> vP1;
    vP1 = fact.createN(2 * nbSamples);
	
    cout << "Samples =" << endl;
    for (unsigned i = 0; i<std::min(5, (int)vP1.size()); i++)
    {
      PRINT(vP1[i]);
    }
	while (i < nbIter && success)
    {
      int idxa, idxb, idxc, idxd;
      idxa = randGen::uni_int(0, vP1.size() - 1);
      idxb = randGen::uni_int(0, vP1.size() - 1);
      idxc = randGen::uni_int(0, vP1.size() - 1);
      idxd = randGen::uni_int(0, vP1.size() - 1);
      polyTg & a = vP1[idxa];
      polyTg & b = vP1[idxb];
      polyTg & c = vP1[idxc];
      polyTg & d = vP1[idxd];
      success &= TestXIS<polyTg>::TestAll(a);
      success &= TestIS<polyTg>::TestAll(a, b, c);
      success &= TestResiduation<polyTg>::TestAll(a, b, c, d);
      success &= TestResiduationIneq<polyTg>::TestAll(a, b, c, d);
      cout << "->";
      i++;
    }
    return success;
  }
}