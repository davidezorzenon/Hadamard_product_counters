
/* all the libray is compiled, you can create a library */
#ifndef _WIN32
#include "../include/lminmaxgd.h"
#include "../src/gd.cpp"
#include "../src/poly.cpp"
#include "../src/serie.cpp"
#include "../src/smatrix.cpp"
#include "../src/tools.cpp"
#else
#include "..\include\lminmaxgd.h"
#include "..\src\gd.cpp"
#include "..\src\poly.cpp"
#include "..\src\serie.cpp"
#include "..\src\smatrix.cpp"
#include "..\src\tools.cpp"
using namespace std;
#endif
/////////////////////////////////////////////////////////////////////
/* Example : Automatica 2001, to appear
           "Model reference control for timed event graphs in dioids"
*/

/////////////////////////////////////////////////////////////////////

using namespace mmgd;

int main()
{
try
{
	
		smatrix A(3, 3);	// state matrix

		smatrix H(1, 2); // transfer matrix

		smatrix CA(1, 3); // observabilyt matrix
		smatrix Gref(1, 2), E(2, 2);

		A(0, 0) = gd(1, 2);//(1,2)
		A(1, 1) = gd(1, 3);
		A(2, 0) = gd(1, 3);
		A(2, 1) = gd(0, 8);
		A(2, 2) = gd(1, 2);

		smatrix B(3, 2), C(1, 3);	// input output matrices

		C(0, 2) = gd(0, 2);

		B(0, 0) = e;	// x1=u1
		B(1, 1) = e;	// x6=u2

		smatrix As = star(A);
		CA = otimes(C, As);  // CA* observability matrix
		cout << "CA* :\n" << CA << endl;

		H = otimes(CA, B); // input/output transfer CA*B
		cout << "H :\n" << H << endl;


		serie s1;
		gd m;
		s1.init(epsilon, e, m.init(1, 3));
		// Defintion of the reference model to match
		Gref(0, 0) = otimes(H(0, 0), s1);
		Gref(0, 1) = otimes(H(0, 1), s1);

		cout << "Gref :\n" << Gref << endl;

		// Optimal Output Feedback on State Sr=(CA*)\Gref/H
		smatrix GrefdivCA = lfrac(Gref, CA);
		smatrix Sr(3, 1);
		Sr = rfrac(GrefdivCA, H);
		cout << "Optimal Output Feedback on State Sr : \n" << Sr << endl;

		Sr = prcaus(Sr);
		cout << "Causal Version Sr+ : \n" << Sr << endl;
		// Controlled system Gbf=((CA*Sr)*)H
		smatrix CASr = otimes(CA, Sr);
		CASr = star(CASr);
		smatrix Gbfsr(1, 2);

		Gbfsr = otimes(CASr, H);

		cout << "Controlled system Gbf=((CA*Sr)*)H : \n " << Gbfsr << endl;
	return(0);
}

 catch(mem_limite l)
 {
	 cout<<"Exception : too many coefficent in polynom "<<l.memoire<<endl;
	 return(1);
 }

 catch(taille_incorrecte obj)
 { // 0 : r non causal
   // 1 : tentative d'accès à un element d'une matrice avec un indice incorrect
   // 2 : matrice de taille incompatible pour oplus, inf, otimes, rfrac, lfrac
   // 3 : etoile de matrice carré uniquement
	 cout<<"Exception  "<<obj.erreur<<endl;
	 return(1);
 }
}
