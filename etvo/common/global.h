#pragma once


class global
{
public:
  static int LIMIT_TRANS_DELTA;
  static unsigned NB_ITER;
  static unsigned NB_LOOPS;
  static unsigned char TST_IS;
  static unsigned char TST_XIS;
  static unsigned char TST_RESIDUEQ;
  static unsigned char TST_RESIDUINEQ;
  static unsigned char TST_ALL;
  static unsigned char TST_KLEENE;
  static long INF;
  static long _INF;  

  enum OPLUS_ALG {oplus_std, oplus_CD};
  enum OTIMES_ALG{otimes_std, otimes_CD };
  enum STAR_ALG{ star_CD, star_alternate};
  enum MAT_STAR_ALG{ mat_star_gauss, mat_star_block,mat_star_mmgd };
  static OPLUS_ALG oplus_alg;
  static OTIMES_ALG otimes_alg;
  static STAR_ALG star_alg;
  static MAT_STAR_ALG mat_star_alg;
};
