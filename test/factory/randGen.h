#ifndef __TEST_RANDGEN__
#define  __TEST_RANDGEN__

#include<algorithm>
#include<vector>
#include<time.h>

#include "../../etvo/etop/gNg.h"
#include "../../etvo/etop/E_op.h"
#include "../../etvo/etop/T_op.h"

#include "../../etvo/seriesEd/Ed.h"
#include "../../etvo/seriesEd/polyEd.h"
#include "../../etvo/seriesEd/seriesEd.h"

#include "../../etvo/seriesTg/Tg.h"
#include "../../etvo/seriesTg/polyTg.h"
#include "../../etvo/seriesTg/seriesTg.h"

#include "../../etvo/wrapperMMGD/seriesWrapper.h"

#include "../../etvo/Fper/Fminp.h"
#include "../../etvo/Fper/Fmaxp.h"
#include "../../etvo/etop/dDd.h"

namespace etvo
{

  class randGen
  {
  public:

    static int uni_int(int mini, int maxi);
    static int norm_int(int mini, int maxi);
    
    static etvo::poly Rand_poly(unsigned nbTerms, const etvo::gd & offset, int maxGap=5);
    static etvo::poly Rand_poly(unsigned nbTerms);
    static etvo::series Rand_series(unsigned nTerms, const etvo::gd & slopeR=gd(5,6), const etvo::gd & offset=etvo::gd(0,0), int maxGap = 5);
    
    static etvo::gNg Rand_gNg();
    static etvo::dDd Rand_dDd();

    static etvo::Fper Rand_Fper_fixedPer(int rangeY0,int dP, int codP);
    static etvo::Fper Rand_Fper_fixedPer_and_Y0(int Y0, int dP, int codP);

    static etvo::Fminp Rand_Fminp_fixedPer(int rangeY0, int dP, int codP);
    static etvo::Fminp Rand_Fminp_fixedPer_and_Y0(int Y0, int dP, int codP);

    static etvo::Fmaxp Rand_Fmaxp_fixedPer(int rangeY0, int dP, int codP);
    static etvo::Fmaxp Rand_Fmaxp_fixedPer_and_Y0(int Y0, int dP, int codP);
        
    static etvo::E_op Rand_Eop_fixedG(unsigned Me, unsigned Be);
    static etvo::E_op Rand_Eop_fixedG(unsigned Me, unsigned Be, int g0);
    static etvo::E_op Rand_Eop(unsigned Me, unsigned Be);

    static etvo::T_op Rand_Top_fixedG(unsigned MBe);
    static etvo::T_op Rand_Top_fixedG(unsigned MBe, int t0);
    static etvo::T_op Rand_Top(unsigned MBe);
    
    static etvo::Ed Rand_Ed(unsigned Me, unsigned Be);
    static etvo::Ed Rand_Ed(unsigned Me, unsigned Be,int g,int d);
    static etvo::Ed Rand_Ed_fixedG(unsigned Me, unsigned Be);
    static etvo::Ed Rand_Ed_fixedG(unsigned Me, unsigned Be, int g, int d);

    static etvo::Tg Rand_Tg(unsigned MBe);
    static etvo::Tg Rand_Tg(unsigned MBe, int g, int d);
    static etvo::Tg Rand_Tg_fixedG(unsigned MBe);
    static etvo::Tg Rand_Tg_fixedG(unsigned MBe,int g,int d);
    
    static etvo::polyEd Rand_polyEd_fixedG(unsigned Me, unsigned Be, unsigned nbTerms,int maxGap=5);
    static etvo::polyEd Rand_polyEd_fixedG(const etvo::gd & offset, unsigned Me, unsigned Be, unsigned nbTerms, int maxGap = 5);
    static etvo::polyEd Rand_polyEd(unsigned M, unsigned B, unsigned nbTerms, int maxGap = 5);
        
    static etvo::seriesEd Rand_seriesEd_fixedG(unsigned Me, unsigned Be, unsigned nbTerms, const etvo::gd & off=etvo::gd(0,0));
    static etvo::seriesEd Rand_seriesEd_fixedG_fixedSlope(unsigned Me, unsigned Be, const etvo::gd & rSlope, unsigned nbTerms, const etvo::gd & off= etvo::gd(0, 0));
    static etvo::seriesEd Rand_seriesEd(unsigned Me, unsigned Be, unsigned nbTerms, const etvo::gd & off = etvo::gd(0, 0));
 
    static etvo::polyTg Rand_polyTg_fixedG(unsigned MBe, unsigned nbTerms, int maxGap = 5);
    static etvo::polyTg Rand_polyTg(unsigned MB, unsigned nbTerms, int maxGap = 5);
    static etvo::polyTg Rand_polyTg_fixedG(const etvo::gd & offset, unsigned MB, unsigned nbTerms, int maxGap = 5);

	static etvo::seriesTg Rand_seriesTg_fixedG_fixedSlope(unsigned MB, const etvo::gd & rSlope, unsigned nbTerms, const etvo::gd & off = etvo::gd(0, 0));

  };
}



#endif