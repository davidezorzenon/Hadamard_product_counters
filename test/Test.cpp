#include "Test.h"
#include <sstream>
#include<iostream>

#include "testException.h"

using namespace std;
using namespace etvo;


//#define TstXIS
//#define TstgNg
//#define TstdDd
//#define TstPolyEd
//#define TstPolyTg
//#define TstSeriesEd

namespace test
{
	bool Test::flag = false;

	unsigned Test::percentEpsInFactory=5;
	unsigned Test::percentPolyInFactory=15;
	unsigned Test::nbTermsInFactory=5;
	unsigned Test::gainInFactory=5;

	void Test::setup()
	{
		global::NB_ITER = 5;
		global::NB_LOOPS = 5;
		Test::percentEpsInFactory = 30;
		Test::percentPolyInFactory = 30;
		Test::nbTermsInFactory = 3;
		Test::gainInFactory = 4;

		// Choice of algorithms
		global::oplus_alg = global::OPLUS_ALG::oplus_std;
		global::otimes_alg = global::OTIMES_ALG::otimes_std;
		global::star_alg = global::STAR_ALG::star_CD;
		global::mat_star_alg = global::MAT_STAR_ALG::mat_star_block;
	}

	void Test::TestAllSpecific(unsigned int TST)
	{
		if (TST&TEST_GNG_DDD)
		{
			if (!test::Test::Specific_gNg(global::NB_ITER))  throw testException(6, "problem in Specific gNg");
			if (!test::Test::Specific_dDd(global::NB_ITER))  throw testException(7, "problem in Specific dDd");
		}
		if (TST&TEST_POLYED)
		{
			if (!test::Test::Specific_polyEd(global::NB_ITER)) throw testException(11, "problem in Specific_polyEd");
		}

		if (TST&TEST_POLYTG)
		{
			if (!test::Test::Specific_polyTg(global::NB_ITER)) throw testException(12, "problem in Specific_polyTg");
		}

		if (TST&TEST_SERIESED)
		{
			if (!test::Test::Specific_seriesEd(global::NB_ITER)) throw testException(13, "problem in Specific_seriesEd");
		}

    if (TST&TEST_SERIESTG)
    {
      if (!test::Test::Specific_seriesTg(global::NB_ITER)) throw testException(14, "problem in Specific_seriesTg");
    }
		
	}

	void Test::TestAllUnit(unsigned int TST)
	{
		if (TST&TEST_FPER)
		{
			if (!test::Test::Unit_Fper()) throw testException(1, "problem in Unit_Fper");
			if (!test::Test::Unit_Fminp()) throw testException(2, "problem in Unit_Fminp");
			if (!test::Test::Unit_Fmaxp()) throw testException(3, "problem in Unit_Fmaxp");			
		}

		if (TST&TEST_POLY)
		{
			cout << endl << "wrapperII poly ";
			unsigned numTest = test::Test::Unit_gdWrapper();
			if (numTest != 0) {
				stringstream ss;
				ss << "Problem in Unit_gdWrapper numTest=" << numTest;
				throw testException(8, ss.str());
			}

			numTest = test::Test::Unit_polyWrapper();
			if (numTest != 0) {
				stringstream ss;
				ss << "Problem in Unit_polyWrapper numTest=" << numTest;
				throw testException(9, ss.str());
			}
		}

		if (TST&TEST_SERIES)
		{
			unsigned numTest = test::Test::Unit_serieWrapper();
			if (numTest != 0) {
				stringstream ss;
				ss << "Problem in Unit_serieWrapper numTest=" << numTest;
				throw testException(10, ss.str());
			}
		}

		if (TST&TEST_POLYED)
		{
			unsigned numTest = test::Test::Unit_Ed();
			if (numTest != 0) {
				stringstream ss;
				ss << "Problem in Unit_Ed numTest=" << numTest;
				throw testException(11, ss.str());
			}

			numTest = test::Test::Unit_polyEd();
			if (numTest != 0) {
				stringstream ss;
				ss << "Problem in Unit_polyEd numTest=" << numTest;
				throw testException(11, ss.str());
			}
		}

		if (TST&TEST_SERIESED)
		{
			unsigned numTest = test::Test::Unit_seriesEd();
			if (numTest != 0) {
				stringstream ss;
				ss << "Problem in Unit_Ed numTest=" << numTest;
				throw testException(11, ss.str());
			}
		}

    if (TST&TEST_POLYTG)
    {
      unsigned numTest = test::Test::Unit_Tg();
      if (numTest != 0) {
        stringstream ss;
        ss << "Problem in Unit_Tg numTest=" << numTest;
        throw testException(11, ss.str());
      }

      numTest = test::Test::Unit_polyTg();
      if (numTest != 0) {
        stringstream ss;
        ss << "Problem in Unit_polyEd numTest=" << numTest;
        throw testException(11, ss.str());
      }
    }

    if (TST&TEST_SERIESTG)
    {
      unsigned numTest = test::Test::Unit_seriesTg();
      if (numTest != 0) {
        stringstream ss;
        ss << "Problem in Unit_seriesTg numTest=" << numTest;
        throw testException(11, ss.str());
      }
    }

	}
	void Test::TestAllRegular(unsigned int TST)
	{
		if (TST&TEST_FPER)
		{
			if (!test::Test::Regular_Fminp(global::NB_ITER)) throw testException(4, "problem in Regular_Fminp");
			if (!test::Test::Regular_Fmaxp(global::NB_ITER)) throw testException(5, "problem in Regular_Fmaxp");
		}
		if (TST&TEST_POLY)
		{
 			if (!test::Test::Regular_polyWrapper(global::NB_ITER)) throw testException(10, "problem in Regular_polyWrapper");
		}

		if (TST&TEST_SERIES)
		{
			if (!test::Test::Regular_serieWrapper(global::NB_ITER)) throw testException(10, "problem in Regular_serieWrapper");;
		}

		if (TST&TEST_POLYED)
		{
			if (!test::Test::Regular_polyEd(global::NB_ITER)) throw testException(11, "problem in Regular_polyEd");
		}

		if (TST&TEST_SERIESED)
		{
			if (!test::Test::Regular_seriesEd(global::NB_ITER)) throw testException(11, "problem in Regular_seriesEd");
		}
		if (TST&TEST_POLYTG)
		{
			if (!test::Test::Regular_polyTg(global::NB_ITER)) throw testException(12, "problem in Regular_polyTg");
		}

		if (TST&TEST_SERIESTG)
		{
			if (!test::Test::Regular_seriesTg(global::NB_ITER)) throw testException(12, "problem in Regular_seriesTg");
		}
	}
} // fin namespace
