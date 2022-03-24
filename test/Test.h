#ifndef TEST_H
#define TEST_H
#include<exception>
#include<random>

#include "../etvo/common/global.h"
#include "macros.h"

#include "TestTemplate/TestResiduation.h"
#include "TestTemplate/TestResiduationIneq.h"
#include "TestTemplate/TestIS.h"
#include "TestTemplate/TestXIS.h"
#include "TestTemplate/TestKleene.h"

#include "../etvo/common/etvoException.h"
#include "factory/randGen.h"

#include "../etvo/wrapperMMGD/seriesWrapper.h"
#include "../etvo/Fper/Fminp.h"
#include "../etvo/Fper/Fmaxp.h"
#include "../etvo/seriesEd/seriesEd.h"

#include "../etvo/seriesTg/seriesTg.h"


#define TEST_FPER 1
#define TEST_POLY 2
#define TEST_SERIES 4
#define TEST_POLYED 8
#define TEST_POLYTG 16
#define TEST_SERIESED 32
#define TEST_SERIESTG 64
#define TEST_GNG_DDD 128


namespace test
{
  
	class Test
	{
	public:
		static bool flag;
		static unsigned percentEpsInFactory;
		static unsigned percentPolyInFactory;
		static unsigned nbTermsInFactory;
		static unsigned gainInFactory;

		static void setup();



		static void ScenarioAllUnit();
		static void ScenarioAllSpecific(unsigned int nbIter, unsigned int nbLoops);
		static void ScenarioAllRegular(unsigned int nbIter,unsigned int nbLoops);

		static void TestAllUnit(unsigned int TST);
		static void TestAllRegular(unsigned int TST);
		static void TestAllSpecific(unsigned int TST);

		// TEST_FPER
		static bool Regular_Fminp(unsigned nbIter);
		static bool Regular_Fmaxp(unsigned nbIter);
		static bool Unit_Fper();
		static bool Unit_Fminp();
		static bool Unit_Fmaxp();

		// TEST_GNG_DDD
		static bool Specific_gNg(unsigned nbIter);
		static bool Specific_dDd(unsigned nbIter);

		// TEST_POLY
		static unsigned Unit_gdWrapper();
		static unsigned Unit_polyWrapper();
		static bool Regular_polyWrapper(unsigned nbIter, unsigned char TST = global::TST_ALL);

		// TEST_SERIES
		static unsigned Unit_serieWrapper();
		static bool Regular_serieWrapper(unsigned nbIter, unsigned char TST = global::TST_ALL);

		//TEST_POLYED
		static unsigned Unit_Ed();
		static unsigned Unit_polyEd();
		static bool Specific_polyEd(unsigned nbIter);
		static bool Regular_polyEd(unsigned, unsigned short TST = 0x0F);
		// extra tests called in Specific_polyEd
		class TestPolyEd
		{
		public:
			static bool TestOplus(unsigned nIter);
			static bool TestOplusPP(unsigned nIter);
			static bool TestOtimesPP(unsigned int nIter);
			static bool TestCompFrac(unsigned int nIter);
			static bool TestCompInfCD(unsigned int nIter);
			static bool TestCompOplusCD(unsigned int nIter);
			static bool TestCompOtimesCD(unsigned int nIter);

		};

		static unsigned Unit_seriesEd();
		static bool Regular_seriesEd(unsigned nbIter, unsigned short TST= global::TST_ALL);

		static bool Specific_seriesEd(unsigned nbIter);
		static bool TestCanonSeriesEd(unsigned nIter);  // specific
		static bool TestCoreSeriesEd(unsigned nIter); // specific
		class TestSeriesEd
		{
		public:			
			static bool TestLeftRight(unsigned nIter);
			static bool TestOtimesSS(unsigned nIter);
			static bool TestOtimesCD(unsigned nIter);
			static bool TestOtimes(unsigned nIter);
			static bool TestOplusSS(unsigned nIter);
			static bool TestOplusCD(unsigned nIter);
			static bool TestOplus(unsigned nIter);
			static bool TestDistributivity(unsigned nIter, unsigned nTerms);
			static bool TestStar(unsigned nIter, unsigned nTerms);
			static bool TestCanon(unsigned nIter);			
		};


    //TEST_POLYTG
    static unsigned Unit_Tg();
    static unsigned Unit_polyTg();    
		static bool Specific_polyTg(unsigned nbIter);
		static bool Regular_polyTg(unsigned, unsigned short TST = 0x0F);

    static unsigned Unit_seriesTg();
    static bool Regular_seriesTg(unsigned nbIter, unsigned short TST = global::TST_ALL);	

    static bool Specific_seriesTg(unsigned nbIter);
    

		static void TestPov();
		static void TestBugs();
	};

}

#endif // TEST_H
