#include <iostream>
#include <exception>

#include "etvo.h"
#include "testsETVO.h"

using namespace std;
using namespace etvo;
using namespace test;

int main()
{
	FactorySeriesTg fact(10,14,gd(10, 10),false,false, false, gd(10, 10), 5);
	seriesTg sH;
	
	for (unsigned i = 0; i < 10; i++)
	{
		sH = fact.create();
		cout << "sH=" << sH.toStringAsDeltaVar() << endl;
	}
		
	seriesTg sF = sH.lfrac(sH).rfrac(sH);
	sF.toRight();
	cout << "sF="<< sF.toStringAsDeltaVar() << endl;
		
	seriesTg sFc = seriesTg::toCausal(sF);
	sFc.toRight();
	cout << "sFc=" << sFc.toStringAsDeltaVar() << endl;

	seriesTg CL = (sH*sFc).star()*sH;
	CL.toRight();

	cout << "CL=" << CL.toStringAsDeltaVar() << endl;

	cout << (CL == sH) << endl;
	return 0;
	
}

 
  
  


 
