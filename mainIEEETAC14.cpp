// main IEEETAC14.cpp
/* Examples from
Cottenceau, B., Hardouin, L., & Boimond, J. L. (2013). 
Modeling and control of weight-balanced timed event graphs in dioids. 
IEEE Transactions on Automatic Control, 59(5), 1219-1231.
*/

#include <iostream>
#include <exception>
#include "etvo.h"

using namespace std;
using namespace etvo;

int main()
{
	matrix<seriesEd> A(4, 4), B(4, 1), C(1, 4);
	B(0, 0) = eg(0);
	C(0, 3) = eg(0);
	A(1, 0) = eb(2)*ed(2);
	A(1, 1) = eg(1)*ed(2);
	A(2, 0) = em(3);
	A(2, 2) = eg(2)*ed(1);
	A(3, 1) = em(3);
	A(3, 2) = eb(2)*eg(1)*ed(1);
	cout << A << endl;
	matrix<seriesEd> As = A.star();
	matrix<seriesEd>  H = C*As*B;
	seriesEd h = H(0,0);
	h.toRight();
	cout << "h=" << h << endl;		
	h.toLeft();
	cout << "h=" << h << endl;
	cout << "Neutral feedback synthesis" << endl;
	seriesEd F = (h.lfrac(h)).rfrac(h);
	F = seriesEd::toCausal(F);
	F.toLeft();
	cout << "Fcaus = " << F << endl;
	F.toRight();
	cout << "Fcaus = " << F << endl;

	cout << "Check that closed-loop = open-loop" << endl;

	seriesEd CL = h * (F*h).star();
	cout << "closed-loop transfer =" << CL << endl;
	cout << "open-loop = closed-loop :" << (CL == h) << endl;
}

 
  
  


 
