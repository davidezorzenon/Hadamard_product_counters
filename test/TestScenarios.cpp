
#include<iostream>
#include "Test.h"
#include "../etvo.h"
using namespace etvo;
using namespace std;

namespace test
{

	void Test::ScenarioAllUnit()
	{
		cout << "UNIT Tests " << endl;
		try
		{
			Test::TestAllUnit(TEST_FPER | TEST_GNG_DDD | TEST_POLY | TEST_SERIES | TEST_POLYED | TEST_POLYTG | TEST_SERIESED | TEST_SERIESTG);
		}
		catch (const testException & e)
		{
			cout << "Tests aborted !!!!" << endl;
			cout << e.Message() << endl;
		}
		catch (const etvoException & et)
		{
			cout << "Tests aborted !!!!" << endl;
			cout << et.Message() << endl;
		}
		catch (const char * msg)
		{
			cout << msg << endl;
		}
		catch (...)
		{
			cout << "Problem undefined!!!!" << endl;
		}

	}

	void Test::ScenarioAllSpecific(unsigned int nbIter, unsigned int nbLoops)
	{
		cout << "Specific Tests " << endl;
		global::NB_ITER = nbIter;
		global::NB_LOOPS = nbLoops;
		try
		{
			Test::TestAllSpecific(TEST_FPER | TEST_GNG_DDD | TEST_POLY | TEST_SERIES | TEST_POLYED | TEST_POLYTG | TEST_SERIESED | TEST_SERIESTG);
		}
		catch (const testException & e)
		{
			cout << "Tests aborted !!!!" << endl;
			cout << e.Message() << endl;
		}
		catch (const etvoException & et)
		{
			cout << "Tests aborted !!!!" << endl;
			cout << et.Message() << endl;
		}
		catch (const char * msg)
		{
			cout << msg << endl;
		}
		catch (...)
		{
			cout << "Problem undefined!!!!" << endl;
		}

	}
	void Test::ScenarioAllRegular(unsigned int nbIter,unsigned int nbLoops)
	{
		global::NB_ITER = nbIter;
		global::NB_LOOPS = nbLoops;
		try
		{		
			for (unsigned k = 0; k < global::NB_LOOPS; k++)
			{
				Test::TestAllRegular(TEST_FPER | TEST_GNG_DDD | TEST_POLY | TEST_SERIES | TEST_POLYED|TEST_POLYTG|TEST_SERIESED|TEST_SERIESTG);
				
				cout << "k=" << k << endl;
			}

			cout << ">>Tests OK" << endl;
		}
		catch (const testException & e)
		{
			cout << "Tests aborted !!!!" << endl;
			cout << e.Message() << endl;
		}
		catch (const etvoException & et)
		{
			cout << "Tests aborted !!!!" << endl;
			cout << et.Message() << endl;
		}
		catch (const char * msg)
		{
			cout << msg << endl;
		}
		catch (...)
		{
			cout << "Problem undefined!!!!" << endl;
		}


	}
}