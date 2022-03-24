#include "etvo.h"
using namespace etvo;
int main(){
	matrix<seriesEd> A(4, 4), B(4, 1), C(1, 4);
	B(0, 0) = eb(2);  C(0, 1) = eb(2);  C(0, 3) = eg(1);  A(0, 3) = eb(3)*eg(5)*em(2);
	A(1, 0) = em(3)*ed(2);  A(2, 1) = eg(0);  A(3, 2) = eb(2)*ed(5);
	matrix<seriesEd> H = C * A.star()*B;  // H de taille 1x1
	H(0, 0).toRight();
	std::cout << H(0, 0) << "\n";
	//((m3.b4.g2+g1.m3.b4).d2+(g1.m3.b4.g2+g2.m3.b4).d7).[g2.d7]*
}

 /* Exemple 1
 E_op w = E_op::Beta(3)*E_op::Gamma(2)*E_op::Mu(4);
 std::cout << "w=" << w << "\n"; // w=m4.b3.g2+g2.m4.b3.g1+g3.m4.b3
 Fminp Fw = w.getFw();
 std::cout << "Fw=" << Fw << "\n";  // Fw=[0 2 3 ](3,4)
 std::vector<gNg> termes = w.getTerms();
 for (gNg t : termes)	std::cout << t << ","; // m4.b3.g2,g2.m4.b3.g1,g3.m4.b3,
*/

/*
seriesEd sa = (eb(2) + eg(1)*eb(2)*ed(5))*ed(2)*em(3);
seriesEd sb = eb(3)*eg(5)*em(2)*eb(2)*ed(7)*em(3);
seriesEd sH = sa * sb.star()*eb(2);
sH.toRight();
std::cout << "sH=" << sH << "\n";
// sH=((m3.b4.g2+g1.m3.b4).d2+(g1.m3.b4.g2+g2.m3.b4).d7).[g2.d7]*
sH.toLeft();
std::cout << "sH=" << sH << "\n";
//sH=[g3.d14]*.((m3.b4.g2+g1.m3.b4).d2+(g1.m3.b4.g2+g2.m3.b4).d7
//	 +(g1.m3.b4.g2+g3.m3.b4).d9+(g2.m3.b4.g2+g4.m3.b4).d14)
polyEd q = sH.getQ(); // polynôme q
std::cout << "q[0]=" << q[0] <<"\n"; //1er terme de q=(m3.b4.g2+g1.m3.b4).d2
matrix<series> Q = sH.getCoreMax();
std::cout << "Q(1,2)=" << Q(1,2) << "\n";
//Q(1, 2) = (g0.d2).[g1.d14] *
*/


/*
matrix<seriesEd> A(4,4), B(4,1), C(1,4);
B(0,0)=eb(2); C(0,1)=eb(2);C(0,3)=eg(1);
A(0,3)=eb(3)*eg(5)*em(2);
A(1,0)=em(3)*ed(2);
A(2,1)=eg(0);
A(3,2)=eb(2)*ed(5);
matrix<seriesEd> H=C*A.star()*B;  // H de taille 1x1
H(0,0).toRight();
std::cout << H(0,0) << "\n";
//((m3.b4.g2+g1.m3.b4).d2+(g1.m3.b4.g2+g2.m3.b4).d7).[g2.d7]*
*/

/*
matrix<seriesTg> A(4, 4), B(4, 1), C(1, 4);
B(0, 0) = tD(3);  C(0, 1) = td({ 1,0 });  C(0, 3) = tg(1);  A(0, 3) = tg(2);
A(1, 0) = td(1);  A(2, 1) = td(0);  A(3, 2) = td({ 2,3,2 });
matrix<seriesTg> G = C * A.star()*B;
G(0, 0).toRight();
std::cout << "G(0,0)=" << G(0, 0) << "\n";
//G(0,0)=(((d-1.D6+d1.D6.d-3).g0)) + (d4.D3.g1+(d3.D6+d5.D6.d-3).g2).[d3.g2]*
std::cout << "G(0,0)=" << G(0, 0).toStringAsDeltaVar() << "\n";
//G(0,0)=((d<1,4,3,2,3,2>.g0))+(d<4,6,5>.g1+d<5,8,7,6,7,6>.g2).[d3.g2]*
*/