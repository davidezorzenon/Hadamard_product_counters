#include "global.h"

/// global parameters/constants 
int global::LIMIT_TRANS_DELTA = 2000;
unsigned global::NB_ITER = 20;
unsigned global::NB_LOOPS = 20;

// identifiers for tests
unsigned char global::TST_IS = 1;
unsigned char global::TST_XIS=2;
unsigned char global::TST_RESIDUEQ=4;
unsigned char global::TST_RESIDUINEQ=8;
unsigned char global::TST_KLEENE = 16;
unsigned char global::TST_ALL=31;

long global::INF= 2147483647;
long global::_INF = -2147483647;

// parameters for algorithms
global::OPLUS_ALG global::oplus_alg=oplus_std;
global::OTIMES_ALG global::otimes_alg= otimes_std;
global::STAR_ALG global::star_alg=star_CD;
global::MAT_STAR_ALG global::mat_star_alg=mat_star_block;