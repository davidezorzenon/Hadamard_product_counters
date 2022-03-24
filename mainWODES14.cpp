//mainWODES14.cpp
/* Example illustrating 
Cottenceau, B., Lahaye, S., & Hardouin, L. (2014). 
Modeling of time-varying (max,+) systems by means of weighted timed event graphs. 
IFAC Proceedings Volumes, 47(2), 465-470.
*/
#include <iostream>
#include <exception>
#include "etvo.h"

using namespace std;
using namespace etvo;

int main()
{
	matrix<seriesEd> A(3, 3), B(3, 1), C(1, 3);
	B(0, 0) = eg(0);
	C(0, 2) = eg(0);

	A(1, 0) = eb({ 1,0,0 })*em({ 1,0,0 })*ed(3);
	A(1, 0) = A(1, 0) + eb({ 0,1,0 })*em({0,1,0 })*ed(4);
	A(1, 0) = A(1, 0) + eb({ 0,0,1 })*em({ 0,0,1 })*ed(6);

	A(2, 1) = eb({ 1,0 })*em({ 1,0 })*ed(2);
	A(2, 1) = A(2, 1) + eb({ 0,1 })*em({0,1 })*ed(5);

	A(0, 1) = eg(3);
	cout << A << endl;

	matrix<seriesEd> As = A.star();

	matrix<seriesEd>  H = (C * As*B);
	seriesEd h = H(0, 0);

	cout << "h=" << h << endl;	
	cout << "h=" << h.toStringAsMuVar() << endl;

	cout << "Impulse response " << endl;
	cout << "h.I = " << h.toSeries() << endl;
	cout << "h.g4.I = " << (h*eg(4)).toSeries() << endl;

	cout << "Neutral feedback synthesis" << endl;
	seriesEd F = (h.lfrac(h)).rfrac(h);
	F = seriesEd::toCausal(F);
	cout << "Fcaus = " << F << endl;

	cout << "Check that closed-loop = open-loop" << endl;

	seriesEd CL = h * (F*h).star();
	cout << "closed-loop transfer =" << CL << endl;
	cout << "open-loop = closed-loop :" << (CL == h) << endl;
 
}

 
  
  


 
