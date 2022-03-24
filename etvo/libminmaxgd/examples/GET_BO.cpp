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
/* Example : Example of computation :
             transfer matrix
             controllability matrix
             observability matrix
             Optimal control
             Optimal prefilter to match a reference model
             This example is in the Lecture note of Laurent Hardouin
*/


using namespace std;
using namespace mmgd;

int main(void)
{
try{

smatrix A(6,6), AS(6,6),B(6,2), C(1,6);
smatrix ASB, CASB;
poly p,q;


// the system, state matrix A
A(0,1)=gd(2,2); //
A(1,0)=gd(0,6); //

A(2,3)=gd(2,1); //
A(3,2)=gd(0,1); //
A(4,1)=gd(0,2); //
A(4,3)=gd(0,1);
A(4,5)=gd(2,2);
A(5,4)=gd(0,5);

// the input  matrix B
B(0,0)=gd(0,3);
B(2,1)=gd(0,5);

// the output matrix C
C(0,5)=gd(0,1);
// the star of the matrix A
AS= star(A);
cout<<"matrix A* \n"<<AS<<endl;
ASB = otimes(AS,B); // transfer matrix between input and state vector, Controllability matrix
CASB = otimes(C,ASB); // transfer matrix between input and output
cout<<"Transfer of the system CA*B \n"<<CASB<<endl;

smatrix z(1,1);
smatrix U;
q.init(2,25)(4,29)(5,infinit);
z(0,0).init(p,q,e); // defintion od a trajectory to track
U=lfrac(z,CASB);  // Optimal control
cout<<" Control U \n"<<U<<endl;

smatrix P;
P=lfrac(CASB,CASB);
cout<<"Transfer of Optimal Precompensator \n"<<P<<endl;
// Uncommment  the lines below if you want to save the result in a file CAsB.txt
//fstream f;

//  f.open("CAsB.txt",ios::out);
//f<<casb; // writting in the file of the result
//f.close();

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
