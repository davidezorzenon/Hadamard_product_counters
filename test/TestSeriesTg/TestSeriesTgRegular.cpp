#include<iostream>
#include "../Test.h"
#include "../factory/FactorySeriesTg.h"

using namespace std;
using namespace etvo;

namespace test
{

  bool Test::Regular_seriesTg(unsigned nbIter, unsigned short TST)
  {
    cout << endl  <<"Test Regular etvo::seriesTg" << endl;
    bool success = true;
    unsigned i = 0;
	unsigned int dP = randGen::uni_int(1, Test::gainInFactory);	

    int nbSamples = sqrt(nbIter) + 1;
	FactorySeriesTg factFixeG(Test::nbTermsInFactory,dP,gd(10,10),false,true,false,gd(5,5),2,Test::percentPolyInFactory,Test::percentEpsInFactory);	
	FactorySeriesTg factVarG(Test::nbTermsInFactory,dP, gd(10, 10), false, false, false, gd(5, 5), 2, Test::percentPolyInFactory, Test::percentEpsInFactory);
	FactorySeriesTg factNeutral(Test::nbTermsInFactory,dP,gd(10, 10), false,true, false, gd(5, 5), 2, Test::percentPolyInFactory, Test::percentEpsInFactory);
	vector<seriesTg> vP1, vP2,vPneutral;
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
      seriesTg & a = vP1[idxa];
	  seriesTg & b = vP1[idxb];
	  seriesTg & c = vP2[idxc];
	  seriesTg & d = vP2[idxd];
	  seriesTg & e = vPneutral[idxd];

      try {
        if (TST&global::TST_XIS) success &= TestXIS<seriesTg>::TestAll(a);
        if (TST&global::TST_IS) success &= TestIS<seriesTg>::TestAll(a, b, c);
        if (TST&global::TST_RESIDUEQ) success &= TestResiduation<seriesTg>::TestAll(a, b, c, d);
        if (!success) break;
        if (TST&global::TST_RESIDUINEQ) success &= TestResiduationIneq<seriesTg>::TestAll(a, b, c, d);
        if (!success) break;
		if(TST&global::TST_KLEENE) success &= TestKleene<seriesTg>::TestAll(e, c);
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
		cout << endl << endl << "Test Regular etvo::seriesTg is SUCCESSFUL" << endl;
	cout << "-------------------------------------------------------------------" << endl;
    return success;
  }
}