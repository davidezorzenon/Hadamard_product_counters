#include<iostream>
#include "../Test.h"
//#include "../../parsers/parser.h"
#include "../factory/FactorySeriesEd.h"

using namespace std;
using namespace etvo;

namespace test
{

  bool Test::Regular_seriesEd(unsigned nbIter, unsigned short TST)
  {    
    cout << endl  <<"Test Regular etvo::seriesEd"<< endl;
    bool success = true;
    unsigned i = 0;
	unsigned int dP = randGen::uni_int(1, Test::gainInFactory);
	unsigned int codP = randGen::uni_int(1, Test::gainInFactory);

    int nbSamples = sqrt(nbIter) + 1;
	FactorySeriesEd factFixeG(Test::nbTermsInFactory,codP,dP,gd(10,10),false,true,false,gd(5,5),2,Test::percentPolyInFactory,Test::percentEpsInFactory);	
	FactorySeriesEd factVarG(Test::nbTermsInFactory,codP,dP, gd(10, 10), false, false, false, gd(5, 5), 2, Test::percentPolyInFactory,Test::percentEpsInFactory);
	FactorySeriesEd factNeutral(Test::nbTermsInFactory, codP,codP, gd(10, 10), false,true, false, gd(5, 5), 2, Test::percentPolyInFactory,Test::percentEpsInFactory);
	vector<seriesEd> vP1, vP2,vPneutral;
	vP1 = factFixeG.createN(2 * nbSamples);
	vP2 = factVarG.createN(2 * nbSamples);
	vPneutral = factNeutral.createN(2 * nbSamples);
    
    for (unsigned j = 0; j < nbSamples; j++)
    {
      cout << vP1[j] << endl;
      cout << vP2[j] << endl;
      cout << vPneutral[j] << endl;
    }

    while (i < nbIter && success)
    {
      int idxa, idxb, idxc, idxd;
      idxa = randGen::uni_int(0, vP1.size() - 1);
      idxb = randGen::uni_int(0, vP1.size() - 1);
      idxc = randGen::uni_int(0, vP2.size() - 1);
      idxd = randGen::uni_int(0, vP2.size() - 1);
      seriesEd & a = vP1[idxa];
      seriesEd & b = vP1[idxb];
      seriesEd & c = vP2[idxc];
      seriesEd & d = vP2[idxd];
      seriesEd & e = vPneutral[idxd];

      try {
        if (TST&global::TST_XIS) success &= TestXIS<seriesEd>::TestAll(a);
        if (TST&global::TST_IS) success &= TestIS<seriesEd>::TestAll(a, b, c);
        if (TST&global::TST_RESIDUEQ) success &= TestResiduation<seriesEd>::TestAll(a, b, c, d);
        if (!success) break;
        if (TST&global::TST_RESIDUINEQ) success &= TestResiduationIneq<seriesEd>::TestAll(a, b, c, d);
        if (!success) break;
		if(TST&global::TST_KLEENE) success &= TestKleene<seriesEd>::TestAll(e, c);       
      }
      catch (etvoException ex)
      {
        if (ex.Num() != 901) cout << "Bug!";
      }      
      cout << "->";
      if ((i % 100) == 0) cout << i << endl;
      i++;
    }
	if (success)
		cout << endl << endl << "Test Regular etvo::seriesEd is SUCCESSFUL" << endl;
	cout << "-------------------------------------------------------------------" << endl;
    return success;
  }
}