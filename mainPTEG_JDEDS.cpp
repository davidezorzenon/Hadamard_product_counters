#include <iostream>
#include <exception>
#include "etvo.h"
using namespace std;
using namespace etvo;

int main()
{
	matrix<seriesTg> A(3, 3),B(3,1),C(1,3);
	
	A(1,0) = td({0,0,2,1});
	A(1,1) = tg(2)*td({1,3,2,1});
	A(2,1) = td(1);
	B(0,0)=tg(0);
	C(0,2)=tg(0);
		
	cout << "A=" << A << endl;
	cout << "A*=" << A.star() << endl;
	matrix<seriesTg> sH=C*A.star()*B;
	seriesTg H = sH(0, 0);

	cout << "H=" << H.toStringAsDeltaVar() << endl;	
	cout << "H=" << H << endl;
	H.toRight();	
	cout << "H=" << H.toStringAsDeltaVar() << endl;
	cout << "H=" << H << endl;
	seriesTg F = H.lfrac(H).rfrac(H);
	cout << "F=" << F <<  endl;
	F = seriesTg::toCausal(F);
	cout << "F=" << F << endl ;
	cout << F.toStringAsDeltaVar() << endl;
	
}

 
  
  


 
