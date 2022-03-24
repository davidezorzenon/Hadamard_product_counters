
#include "randGen.h"
#include<random>

using namespace std;
using namespace etvo;

namespace etvo
{
  std::default_random_engine gen{ static_cast<long unsigned int>(time(0)) };
  std::normal_distribution<> norm_dist(50, 20);
  std::uniform_int_distribution<> uni_dist(1, 1000);

  gNg rand_gNg1()
  {
    return gNg(randGen::uni_int(0, 100), randGen::uni_int(1, 15), randGen::uni_int(1, 15), randGen::uni_int(0, 100));
  }
  gNg rand_gNg2()
  {
    return gNg(randGen::uni_int(-20, 20), randGen::uni_int(1, 30), randGen::uni_int(1, 30), randGen::uni_int(-20, 20));
  }
  gNg rand_gNg3()
  {
    return gNg(randGen::uni_int(-20, 50), randGen::uni_int(1, 30), randGen::uni_int(1, 30), randGen::uni_int(-20, 50));
  }
  gNg randGen::Rand_gNg()
  {
    int val = uni_dist(gen) % 3;
    switch (val)
    {
    case 0:
      return rand_gNg1();
      break;
    case 1:
      return rand_gNg2();
      break;
    default:
      return rand_gNg3();
      break;
    }
  }

  dDd rand_dDd1()
  {
    return dDd(randGen::uni_int(0, 100), randGen::uni_int(1, 15), randGen::uni_int(1, 15), randGen::uni_int(0, 100));
  }
  dDd rand_dDd2()
  {
    return dDd(randGen::uni_int(-20, 20), randGen::uni_int(1, 30), randGen::uni_int(1, 30), randGen::uni_int(-20, 20));
  }
  dDd rand_dDd3()
  {
    return dDd(randGen::uni_int(-20, 50), randGen::uni_int(1, 30), randGen::uni_int(1, 30), randGen::uni_int(-20, 50));
  }
  dDd randGen::Rand_dDd()
  {
    int val = uni_dist(gen) % 3;
    switch (val)
    {
    case 0:
      return rand_dDd1();
      break;
    case 1:
      return rand_dDd2();
      break;
    default:
      return rand_dDd3();
      break;
    }
  }


  int randGen::uni_int(int mini, int maxi)
  {
    int m = std::min(mini, maxi);
    int M = std::max(mini, maxi);
    double fact = double(M - m) / 1000;
    return (int)(uni_dist(gen)*fact + m);
  }

  int randGen::norm_int(int mini, int maxi)
  {
    int m = std::min(mini, maxi);
    int M = std::max(mini, maxi);
    double fact = double(M - m) / 100;
    return (int)(m + fact * norm_dist(gen));
  }

  etvo::Fper randGen::Rand_Fper_fixedPer(int rangey0, int dP, int codP)
  {
    int offsetY = randGen::uni_int(-rangey0, rangey0);
    vector<int> seq(dP, offsetY);
    for (int i = 0; i < (dP / 2); i++)
    {
      int idx = randGen::uni_int(0, dP - 1);
      seq[idx] = (int)(offsetY + double(codP) / dP * idx + randGen::norm_int(-codP / 2, codP / 2));
    }

    for (int i = 1; i < dP; i++)
    {
      seq[i] = std::max(seq[i - 1], seq[i]);
    }
    Fper f(dP, codP, seq);
    return f;
  }

  Fper randGen::Rand_Fper_fixedPer_and_Y0(int Y0, int dP, int codP)
  {
    int offsetY = Y0;
    vector<int> seq(dP, offsetY);
    for (int i = 0; i < dP / 2; i++)
    {
      int idx = randGen::uni_int(0, dP - 1);
      seq[idx] = (int)(offsetY + double(codP) / dP * idx + randGen::norm_int(-codP / 2, codP / 2));
    }

    for (int i = 1; i < dP; i++)
    {
      seq[i] = std::max(seq[i - 1], seq[i]);
    }
    Fper f(dP, codP, seq);
    return f;
  }

  Fminp randGen::Rand_Fminp_fixedPer(int rangey0, int dP, int codP)
  {
    return Fminp(randGen::Rand_Fper_fixedPer(rangey0, dP, codP));
  }

  Fminp randGen::Rand_Fminp_fixedPer_and_Y0(int Y0, int dP, int codP)
  {
    return Fminp(randGen::Rand_Fper_fixedPer(Y0, dP, codP));
  }

  Fmaxp randGen::Rand_Fmaxp_fixedPer(int rangey0, int dP, int codP)
  {
    return Fmaxp(randGen::Rand_Fper_fixedPer(rangey0, dP, codP));
  }

  Fmaxp randGen::Rand_Fmaxp_fixedPer_and_Y0(int Y0, int dP, int codP)
  {
    return Fmaxp(randGen::Rand_Fper_fixedPer(Y0, dP, codP));
  }

  E_op randGen::Rand_Eop_fixedG(unsigned Me, unsigned Be)
  {
    unsigned M = Me;
    unsigned B = Be;
    int g0 = uni_int(-10, 20);
    int nl;
    int nr;
    E_op w(gNg(g0, M, B, B - 1));
    for (int k = 0; k < (int)min(M, B); k++)
    {
      nl = g0 + ((int)norm_dist(gen)) % M;
      nr = ((int)norm_dist(gen)) % B;
      w.add(gNg(nl, M, B, nr));
    }
    return w;
  }


  E_op Rand_Eop_fixedG1(unsigned Me, unsigned Be, int g0)
  {
    unsigned M = Me;
    unsigned B = Be;
    int nl;
    int nr;
    E_op w(gNg(g0, M, B, B - 1));
    for (int k = 0; k < (int) min(M, B); k++)
    {
      nl = g0 + ((int)norm_dist(gen)) % M;
      nr = ((int)norm_dist(gen)) % B;
      w.add(gNg(nl, M, B, nr));
    }
    return w;
  }

  E_op Rand_Eop_fixedG2(unsigned Me, unsigned Be, int g0)
  {
    Fminp f = randGen::Rand_Fper_fixedPer_and_Y0(g0, Be, Me);
    E_op op;
    op.setFromFw(f);
    return op;
  }


  E_op randGen::Rand_Eop_fixedG(unsigned Me, unsigned Be, int g0)
  {
    int val = uni_dist(gen) % 2;
    switch (val)
    {
    case 0:
      return Rand_Eop_fixedG1(Me, Be, g0);
      break;
    case 1:
      return Rand_Eop_fixedG2(Me, Be, g0);
      break;
    default:
      return Rand_Eop_fixedG2(Me, Be, g0);
      break;
    }
  }
  E_op randGen::Rand_Eop(unsigned Me, unsigned Be)
  {
    unsigned M = randGen::uni_int(1, Me);
    unsigned B = randGen::uni_int(1, Be);
    int g0 = randGen::uni_int(-20, 20);

    int nl;
    int nr;
    E_op w(gNg(g0, M, B, B - 1));
    for (int k = 0; k < (int)(min(M, B) + 5); k++)
    {
      nl = g0 + ((int)norm_dist(gen)) % M;
      nr = ((int)norm_dist(gen)) % B;
      w.add(gNg(nl, M, B, nr));
    }
    return w;
  }


  T_op randGen::Rand_Top_fixedG(unsigned MBe)
  {    
    Fmaxp rw = randGen::Rand_Fmaxp_fixedPer(0, MBe, MBe);
    int val = rw.getValue(0);
    T_op w;
    w.setFromRw(rw);
    w = T_op(dDd(-val))*w;
    return w;
  }

  T_op randGen::Rand_Top_fixedG(unsigned MBe, int t0)
  {
    T_op w = randGen::Rand_Top_fixedG(MBe);
    return T_op(dDd(t0))*w;
  }

  T_op randGen::Rand_Top(unsigned MBe)
  {
    unsigned MB = randGen::uni_int(1, MBe);
    return Rand_Top_fixedG(MB)*T_op::delta(randGen::uni_int(-(int)MBe, 2));
  }

  Ed randGen::Rand_Ed(unsigned Me, unsigned Be)
  {
    return Ed(randGen::Rand_Eop(Me, Be), randGen::uni_int(-20, 20));
  }

  Tg randGen::Rand_Tg(unsigned MBe)
  {
    return Tg(randGen::Rand_Top(MBe), randGen::uni_int(-20, 20));
  }

  Ed randGen::Rand_Ed_fixedG(unsigned Me, unsigned Be)
  {
    return Ed(randGen::Rand_Eop_fixedG(Me, Be), randGen::uni_int(-20, 20));
  }

  Tg randGen::Rand_Tg_fixedG(unsigned MBe)
  {
    return Tg(randGen::Rand_Top_fixedG(MBe), randGen::uni_int(-20, 20));
  }

  Ed randGen::Rand_Ed(unsigned Me, unsigned Be, int g, int d)
  {
    return Ed(randGen::Rand_Eop(Me, Be)*E_op::Gamma(g), randGen::uni_int(-5, +5) + d);
  }

  Tg randGen::Rand_Tg(unsigned MBe, int g, int d)
  {
    return Tg(randGen::Rand_Top(MBe)*T_op::delta(d), randGen::uni_int(-5, +5) + g);
  }

  Ed randGen::Rand_Ed_fixedG(unsigned Me, unsigned Be, int g, int d)
  {
    return Ed(randGen::Rand_Eop_fixedG(Me, Be)*E_op::Gamma(g), randGen::uni_int(-5, +5) + d);
  }

  Tg randGen::Rand_Tg_fixedG(unsigned MBe, int g, int d)
  {
    return Tg(randGen::Rand_Top_fixedG(MBe)*T_op::delta(d), randGen::uni_int(-5, +5) + g);
  }
  polyEd randGen::Rand_polyEd_fixedG(unsigned Me, unsigned Be, unsigned nbTerms,int maxGap)
  {
    if (maxGap < 2) maxGap = 2;

    polyEd pA;
    int g = randGen::uni_int(-10, +10);
    int d = randGen::uni_int(-10, +10);

    for (unsigned i = 0; i < nbTerms; i++)
    {
      E_op opA = randGen::Rand_Eop_fixedG(Me, Be, g);
      g += randGen::uni_int(0, maxGap);
      d += randGen::uni_int(0, maxGap);
      pA = pA + Ed(opA, d);
    }
    return pA;
  }

  polyEd randGen::Rand_polyEd_fixedG(const gd & offset, unsigned Me, unsigned Be, unsigned nbTerms,int maxGap)
  {
    polyEd pA;
    int g = offset.getg();
    int d = offset.getd();

    for (unsigned i = 0; i < nbTerms; i++)
    {
      E_op opA = randGen::Rand_Eop_fixedG(Me, Be, g);
      pA = pA + Ed(opA, d);
      g += randGen::uni_int(0, maxGap);
      d += randGen::uni_int(0, maxGap);
    }
    return pA;
  }


  polyEd randGen::Rand_polyEd(unsigned M, unsigned B, unsigned nbTerms,int maxGap)
  {
    polyEd pA;
    int g = randGen::uni_int(-10, +10);// -10;
    int d = randGen::uni_int(-10, +10);// -10;
    unsigned Me = randGen::uni_int(0, M) + 1;
    unsigned Be = randGen::uni_int(0, B) + 1;

    for (unsigned i = 0; i < nbTerms; i++)
    {
      E_op opA = randGen::Rand_Eop_fixedG(Me, Be, g);
      g += randGen::uni_int(0, maxGap);
      d += randGen::uni_int(0, maxGap);
      pA = pA + Ed(opA, d);
    }
    return pA;
  }


  seriesEd randGen::Rand_seriesEd_fixedG(unsigned Me, unsigned Be, unsigned nbTerms, const gd & off)
  {
    polyEd p = randGen::Rand_polyEd_fixedG(off, Me, Be, nbTerms);
    // cout << "p=" << p << endl;
    Ed m = p[p.size() - 1];
    gd off2(m.getE_op().Fw(0), m.getD());
    polyEd q = randGen::Rand_polyEd_fixedG(off2, Me, Be, nbTerms);
    // cout << "q=" << q << endl;

    Ed m2 = q[q.size() - 1];
    Ed m3 = q[0];
    int deltaG = m2.getE_op().Fw(0) - m3.getE_op().Fw(0);
    int deltaD = m2.getD() - m3.getD();
    deltaG += randGen::uni_int(1, 4);
    deltaD += randGen::uni_int(1, 4);

    seriesEd s(p, q, deltaG, deltaD, false);

    return s;
  }

  seriesEd randGen::Rand_seriesEd_fixedG_fixedSlope(unsigned Me, unsigned Be, const gd & rSlope, unsigned nbTerms, const gd & off)
  {
    polyEd p = randGen::Rand_polyEd_fixedG(off, Me, Be, nbTerms);
    // cout << "p=" << p << endl;
    Ed m = p[p.size() - 1];
    gd off2(m.getE_op().Fw(0), m.getD());
    polyEd q = randGen::Rand_polyEd_fixedG(off2, Me, Be, nbTerms);
    // cout << "q=" << q << endl;

    seriesEd s(p, q, rSlope.getg(), rSlope.getd(), false);

    return s;
  }

  seriesEd randGen::Rand_seriesEd(unsigned Me, unsigned Be, unsigned nbTerms, const etvo::gd & off)
  {
    unsigned M = uni_int(1, Me);
    unsigned B = uni_int(1, Be);
    return Rand_seriesEd_fixedG(M, B, nbTerms, off);
  }

   

  polyTg randGen::Rand_polyTg_fixedG(const gd & offset,unsigned MBe, unsigned nbTerms,int maxGap)
  {
    polyTg pA;
    int g = offset.getg();
    int d = offset.getd();

    for (unsigned i = 0; i < nbTerms; i++)
    {
      T_op opA = randGen::Rand_Top_fixedG(MBe, d);
      g += randGen::uni_int(0, maxGap);
      d += randGen::uni_int(0, maxGap);
      pA = pA + Tg(opA, g);
    }
    return pA;
  }

  polyTg randGen::Rand_polyTg_fixedG(unsigned MBe, unsigned nbTerms, int maxGap)
  {
    polyTg pA;
    int g = randGen::uni_int(-10, +10);
    int d = randGen::uni_int(-10, +10);

    for (unsigned i = 0; i < nbTerms; i++)
    {
      T_op opA = randGen::Rand_Top_fixedG(MBe, d);
      g += randGen::uni_int(0, maxGap);
      d += randGen::uni_int(0, maxGap);
      pA = pA + Tg(opA, g);
    }
    return pA;
  }


  polyTg randGen::Rand_polyTg(unsigned MB, unsigned nbTerms, int maxGap)
  {
    polyTg pA;
    unsigned MBe = randGen::uni_int(1, MB) + 1;
    pA = randGen::Rand_polyTg_fixedG(MBe, nbTerms,maxGap);
    return pA;
  }



  poly randGen::Rand_poly(unsigned nbTerms, const gd & offset, int maxGap)
  {
    if (maxGap < 2) maxGap = 2;
    gd temp(0, 0);
    vector<gd> v(1, temp);
    for (unsigned i = 0; i < nbTerms - 1; i++)
    {
      temp = temp * gd(randGen::uni_int(1, maxGap), randGen::uni_int(1, maxGap));
      v.push_back(temp);
    }
    poly p(v);
    return p * offset;
  }

  poly randGen::Rand_poly(unsigned nbTerms)
  {
    gd off(randGen::uni_int(-20, +30), randGen::uni_int(-20, +30));
    return randGen::Rand_poly(nbTerms, off);
  }


  series randGen::Rand_series(unsigned nTerms, const gd & slopeR, const gd & offset,int maxGap)
  {
    series res;

    unsigned nT1, nT2;
    nT1 = randGen::uni_int(1, 100) % nTerms + 1;
    nT2 = randGen::uni_int(1, 100) % nTerms + 1;

    poly p = randGen::Rand_poly(nT1, offset,maxGap);
    gd shift(randGen::uni_int(1, 100) % 2, randGen::uni_int(1, 100) % 2);
    gd offQ = p[p.getn() - 1] * shift;
    poly q = randGen::Rand_poly(nT2, offQ, maxGap);

    /*
    long deltaT = q[q.getn() - 1].getd() - q[0].getd();
    long deltaN = q[q.getn() - 1].getg() - q[0].getg();
    deltaN = deltaN + randGen::uni_int(1, 3) + 1;
    deltaT = deltaT + randGen::uni_int(1,3) + 1;
    deltaT = randGen::uni_int(1, deltaT);
    deltaN = randGen::uni_int(1, deltaN);
    gd r(deltaN, deltaT);*/
    gd r;
    r = slopeR;
    res = series(p, q, r);
    return res;
  }



  seriesTg randGen::Rand_seriesTg_fixedG_fixedSlope(unsigned MB, const gd & rSlope, unsigned nbTerms, const gd & off)
  {
	  polyTg p = randGen::Rand_polyTg_fixedG(off, MB, nbTerms);
	  
	  Tg m = p[p.size() - 1];
	  gd off2(m.getG(), m.getT_op().Rw(0));
	  polyTg q = randGen::Rand_polyTg_fixedG(off2, MB, nbTerms);
	  return seriesTg(p, q, rSlope, false);
  }
}