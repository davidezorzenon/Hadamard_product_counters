#include "../Test.h"
#include<iostream>

using namespace std;
using namespace etvo;

namespace test
{
  bool Test::Specific_gNg(unsigned nbIter)
  {
    bool testOK = true;
    unsigned i = 0;

    while (testOK && i < nbIter)
    {
      i++;
      etvo::gNg m = randGen::Rand_gNg();      
      Fminp f = m.getFw();
      E_op op;
      op.setFromFw(f);
      vector<gNg> vect = op.getTerms();
      if(vect.size()==1 && (vect[0] == m))
      {                 
      }
      else
      { 
        cout << "Problem in factorization of E_op" << endl;
        testOK = false;
      }
    }

    i = 0;
    while (testOK && i < nbIter)
    {
      i++;
      etvo::gNg m = randGen::Rand_gNg();
      m.canonL();
      int nl, nr;
      nl = m.getNl();
      nr = m.getNr();
      m.canonR();
      m.canonL();
      if (nl != m.getNl() || nr != m.getNr())
      {
        cout << "Problem in TestgNg Canon";
        testOK = false;
      }

      m = randGen::Rand_gNg();
      m.canonR();
      nl = m.getNl();
      nr = m.getNr();
      m.canonL();
      m.canonR();
      if (nl != m.getNl() || nr != m.getNr())
      {
        cout << "Problem in TestgNg Canon";
        testOK = false;
      }
    }

    if (!testOK) return testOK;
    i = 0;
    while (testOK && i < nbIter)
    {
      i++;
      unsigned m = randGen::uni_int(1, 10);
      unsigned b = randGen::uni_int(1, 10);
      int NL = randGen::uni_int(0, 9) % m;
      int NR = randGen::uni_int(0, 9) % b;

      etvo::gNg mon1(NL + randGen::uni_int(1, 50), m, b, NR);
      etvo::gNg mon2(NL, m, b, NR + randGen::uni_int(1, 50));

      mon1.canonR();
      mon1.canonL();
      mon2.canonL();
      mon2.canonR();

      if (mon1.getNr() != NR)
      {
        cout << "Problem in TestgNg Canon2";
        testOK = false;
      }
      if (mon2.getNl() != NL)
      {
        cout << "Problem in TestgNg Canon2";
        testOK = false;
      }
    }

    if (!testOK) return testOK;
    i = 0;
    while (testOK && i < nbIter)
    {
      i++;
      etvo::gNg m = randGen::Rand_gNg();
      pair<unsigned, unsigned> period = m.getPeriodicity();

      int valinit = randGen::uni_int(0, m.getB());
      //cout << "valinit=" << -valinit << endl;
      for (int ki = -valinit; ki < -valinit + 2 * (int)m.getM(); ki++)
      {
        if (m.Fw(ki + (int)m.getB()) != (m.Fw(ki) + (int)m.getM()))
        {
          cout << "Problem in TestgNg Fw(ki)";
          testOK = false;
        }
      }
      cout << "->";
    }
    return testOK;
  }


  bool Test::Specific_dDd(unsigned nbIter)
  {
    bool testOK = true;

    unsigned i = 0;

    while (testOK && i < nbIter)
    {
      i++;
      etvo::dDd m = randGen::Rand_dDd();
      //cout << "m=" << m << endl;
      Fmaxp f = m.getRw();
      T_op op;
      op.setFromRw(f);
      vector<dDd> vect = op.getTerms();
      if (vect.size() == 1 && (vect[0] == m))
      {
        //cout << "m=" << vect[0] << endl;
      }
      else
      {
        cout << "Problem in factorization of T_op" << endl;
        testOK = false;
      }
    }
    i = 0;

    while (testOK && i < nbIter)
    {
      int tl, tr;
      i++;
      etvo::dDd m = randGen::Rand_dDd();      
      m.canonL();
      tl = m.getTl();
      tr = m.getTr();
      m.canonR();
      m.canonL();

      if (tl != m.getTl() || tr != m.getTr())
      {
        cout << "Problem in TestdDd Canon";
        testOK = false;
      }
      
      m = randGen::Rand_dDd();
      m.canonR();
      tl = m.getTl();
      tr = m.getTr();
      m.canonL();
      m.canonR();
      if (tl != m.getTl() || tr != m.getTr())
      {
        cout << "Problem in TestdDd Canon";
        testOK = false;
      }
    }

    if (!testOK) return testOK;
    i = 0;
    while (testOK && i < nbIter)
    {
      i++;
      int D = randGen::uni_int(1, 10);      
      int TL = -(randGen::uni_int(0, 9) % D);
      int TR = -(randGen::uni_int(0, 9) % D);

      etvo::dDd mon1(TL + randGen::uni_int(1, 50), D, TR);
      etvo::dDd mon2(TL, D, TR + randGen::uni_int(1, 50));
      
      mon1.canonR();
      mon1.canonL();
      mon2.canonL();
      mon2.canonR();

      if (mon1.getTr() != TR)
      {
        cout << "i=" << i << endl;
        cout << "mon1=" << mon1 << endl;
        cout << "Problem in TestdDd Canon2";
        testOK = false;
      }
      if (mon2.getTl() != TL)
      {
        cout << "i=" << i << endl;
        cout << "mon2=" << mon2 << endl;
        cout << "Problem in TestdDd Canon2";
        testOK = false;
      }
    }

    if (!testOK) return testOK;
    i = 0;
    while (testOK && i < nbIter)
    {
      i++;
      etvo::dDd m = randGen::Rand_dDd();
      pair<unsigned, unsigned> period = m.getPeriodicity();

      int valinit = randGen::uni_int(0, m.getTmb());      
      for (int ti = -valinit; ti < -valinit + 2 * (int)m.getTmb(); ti++)
      {
        if (m.Rw(ti + (int)m.getTmb()) != (m.Rw(ti) + (int)m.getTmb()))
        {
          cout << "Problem in TestdDd Rw(ti)";
          testOK = false;
        }
      }
      cout << "->";
    }

    return testOK;
  }
}