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
#include <time.h>
/////////////////////////////////////////////////////////////////////
/* Example : HOW TO handle date from matrices of series

*/
/////////////////////////////////////////////////////////////////////

// classes are defined in a specific namespace
// mmgd::gd,mmgd::poly,mmgd::serie,mmgd::smatrix

using namespace mmgd;

int main()
{
try
{

	smatrix A(3,3);	// matrice d'état
    gd r; // a monomial
    poly p,q; // two polynomials
	serie s; // series
	int i,j;

	smatrix As;
	smatrix C;


    srand(time(NULL));

	A(0,0)=gd(1,4);//(g^1,d^4)
	// HOW TO Declare an entry of the  matrix with random value
	A(0,1)=gd(rand()%10,rand()%10); // ramdom exponent in [0-9]
	// HOW TO delcare a polynomial
	p.init(1,5)(5,9)(10,20); // polynomial p
	q.init(10,15)(15,19)(50,30); // polynomail q
	r.init(30,35);

	s.init(p,q,r); // you create a series



	A(0,2)=s; // you can use this sereis to initalize an entry of the matrix

	A(1,0).init(p,q,r); // an other way to do the same, the entry is a series

    s.init(epsilon,q,e); // a series using the monomila epsilon and  e
    A(1,1)=s;

	A(2,2).init(epsilon,q.init(10,20)(12,25),e);
  /// TAKE CARE OF THE MATRICES DIMENSION, EXCEPTION IS GENERATED IF THE MATRICES DIMENSION ARE WRONG
	As=star(A); // the size of the result is ajusted automatically
	cout<<"star illustration\n As \n"<<As<<endl;
	C=oplus(As,A); // sum of matrices
	cout<<"oplus illustration\n C \n"<<C<<endl;
	C=otimes(As,A); //product of matrices
	cout<<"otimes illustration\n C \n"<<C<<endl;
	C=inf(As,A); //inf of matrices
	cout<<"inf illustration\n C \n"<<C<<endl;
	C=lfrac(As,A); //lfrac of matrices
	cout<<"left residuation illustration\n C \n"<<C<<endl;
	C=rfrac(As,A); //rfrac of matrices
	cout<<"right residuation illustration\n C \n"<<C<<endl;
	C=prcaus(C); //Prcaus of matrix
	cout<<"Causal projection illustration\n C \n"<<C<<endl;



/// Example of Data extraction, if you want to extract in interger form the exponent
// infinity is coded as 2147483647 and - infinity as -2147483647
int k;
for (i=0;i<C.getrow();i++)
{for(j=0;j<C.getcol();j++)
{ printf("C(%d,%d).p =",i,j);
 for (k=0;k<C(i,j).getp().getn();k++)
 {
   printf("%d,%d", C(i,j).getp().getpol(k).getg(),C(i,j).getp().getpol(k).getd());


 }
 printf("\n");
 printf("C(%d,%d).q =",i,j);
 for (k=0;k<C(i,j).getq().getn();k++)
 {
   printf("%d,%d", C(i,j).getq().getpol(k).getg(),C(i,j).getq().getpol(k).getd());


 }
 printf("\n");
 printf("C(%d,%d).r =",i,j);
 printf("%d,%d", C(i,j).getr().getg(),C(i,j).getr().getd());



 printf("\n");
}
}



	return(0);
}

 catch(mem_limite l)
 {
	 cout<<"Exception : too many coefficents in polynom "<<l.memoire<<endl;
	 return(1);
 }

 catch(taille_incorrecte obj)
 { // 0 : r non causal
   // 1 : tentative d'accès à un element d'une matrice avec un indice incorrect
   // 2 : matrice de taille incompatible pour oplus, inf, otimes, rfrac, lfrac
   // 3 : etoile de matrice carrée uniquement
	 cout<<"Exception  "<<obj.erreur<<endl;
	 return(1);
 }
}
