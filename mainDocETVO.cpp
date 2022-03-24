// mainDocETVO.cpp
// Examples illustrating the ETVO documentation

// Simple C++ example to compute the transfer series of a PTEG
#include "etvo.h"
using namespace std;
using namespace etvo;

int main()
{
	matrix<seriesTg> A(4, 4), B(4, 1), C(1, 4);
	B(0, 0) = tD(3);	//\Delta_3
	C(0, 1) = td({ 1,0 });	// \delta^<1,0>	
	C(0, 3) = tg(1);	// \gamma^1
	A(0, 3) = tg(2);
	A(1, 0) = td(1);	//\delta^1		
	A(2, 1) = tg(0);
	A(3, 2) = td({ 2,3,2 });
	matrix<seriesTg>  H = (C * A.star()*B);
	H(0, 0).toRight();
	cout << H(0, 0).toStringAsDeltaVar() << endl;
	// output =((d<1,4,3,2,3,2>.g0))+(d<4,6,5>.g1+d<5,8,7,6,7,6>.g2).[d3.g2]*
}



 /* Example 1 TEG with MinMaxGD
 // series corresponds to MinMaxGD series
	matrix<series> A(4, 4), B(4, 1), C(1, 4);
	B(0, 0) = gd(0, 0); 	 // \gamma^0\delta^0=e
	C(0, 1) = gd(0, 0);
	C(0, 3) = gd(1, 0);	// \gamma^1
	A(0, 3) = gd(2, 0);
	A(1, 0) = gd(0, 2);	// \delta^2
	A(2, 1) = gd(0, 0);
	A(3, 2) = gd(0, 3);

	matrix<series>  H = C * A.star() * B;
	cout << H(0, 0) << endl;
	// output : (g0.d2+g1.d5).[g2.d5]*
*/

/* Example 2 WB-TEG
/ Simple C++ example to compute the transfer series of a WB-TEG
#include "etvo.h"
using namespace std;
using namespace etvo;

int main()
{
	matrix<seriesEd> A(4, 4), B(4, 1), C(1, 4);
	B(0, 0) = eb(2);  // \beta_2
	C(0, 1) = eb(2);
	C(0, 3) = eg(1);  // \gamma^1
	A(0, 3) = eb(3)*eg(5)*em(2);  // \beta_3.\gamma^5.\mu_2
	A(1, 0) = em(3)*ed(2);	//\mu_3.\delta^2
	A(2, 1) = eg(0);	//\gamma^0=e
	A(3, 2) = eb(2)*ed(5);	//\beta_2.\delta^5
	matrix<seriesEd>  H = (C * A.star()*B);
	H(0, 0).toRight();
	cout << H(0, 0) << endl;
	// output = ((m3.b4.g2+g1.m3.b4).d2+(g1.m3.b4.g2+g2.m3.b4).d7).[g2.d7]*
}

*/