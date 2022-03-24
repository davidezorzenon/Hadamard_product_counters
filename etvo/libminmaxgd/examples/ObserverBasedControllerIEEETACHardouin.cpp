#ifndef _WIN32
#include "../include/lminmaxgd.h"
#else
#include "..\include\lminmaxgd.h"
using namespace std;
#endif
/////////////////////////////////////////////////////////////////////
/* Example : Observer basesd controller and comparison with output feedbnack
 Example taken from paper
[2] "Observer-based Controllers for (Max-Plus)-Linear Systems"
Laurent Hardouin, Ying Shang, Carlos Andrey Maia, Bertrand Cottenceau
(IEEE TAC, 2015)
// see also animation on http://perso-laris.univ-angers.fr/~hardouin/Observer.html

*/
#include "..\src\gd.cpp"
#include "..\src\poly.cpp"
#include "..\src\serie.cpp"
#include "..\src\smatrix.cpp"
#include "..\src\tools.cpp"

/////////////////////////////////////////////////////////////////////
using namespace mmgd;

int main()
{
try
{

	smatrix A(3,3);	// matrice d'état

	smatrix Lopt,L1,L2;
	int i,j;

	smatrix CA,AB,CAB,AR,CAR;
	smatrix Gref;
	smatrix Popt, Fopt,Kopt;


	A(2,2)=gd(1,4);//(g^1,d^4)
	A(2,1)=gd(0,6);//
	A(2,0)=gd(0,1);

	A(0,0)=gd(1,2);
    A(0,2)=gd(2,0);

	A(1,1)=gd(1,3);

	smatrix C(2,3);	// output matrix only coefficient on diagonal equal to e or epsilon

    C(0,2)=gd(0,0);
    C(1,1)=gd(0,0);
    smatrix B(3,2);	//input matrix, epsilon everywhere
	B(0,0)=gd(0,0);
	B(1,1)=gd(0,0);
	smatrix R(3,3);
	R(0,0)=gd(0,0);
	R(1,1)=gd(0,0);
    R(2,2)=gd(0,0);

	smatrix As=star(A);
	CA=otimes(C,As);  // CA*

    AB=otimes(As,B);
    CAB=otimes(C,AB);
    AR=otimes(As,R);
    CAR=otimes(C,AR);

	L1=rfrac(AB,CAB);
	L2=rfrac(AR,CAR);
	Lopt=inf(L1,L2);
	Lopt=prcaus(Lopt); // L_opt

cout<<"CAB : "<<CAB<<endl;
cout<<"CAR : "<<CAB<<endl;

cout<<"Lopt : " <<Lopt<<endl;


Gref=CAB;

Popt=lfrac(Gref,CAB);
Kopt=otimes(AB,Popt);
Kopt=rfrac(Popt,Kopt);
Kopt=lfrac(Kopt,Popt);
Kopt=prcaus(Kopt);

Fopt=rfrac(Kopt,C);

cout<<" Gref "<<Gref<<endl; // Reference model to match



cout<<" Fopt "<<Fopt<<endl; // Output feedback

cout<<" Kopt "<<Kopt<<endl; // State feedback

// From now we hightlight that the strategy with oberverbasedcontrol is better than
// the feedback, I need your help Ying... :)
smatrix FoptC;
FoptC=otimes(Fopt,C);

cout<<" FoptC "<<FoptC<<endl; // it is smaller than Kopt

smatrix X;
X=otimes(Lopt,C);
X=oplus(A,X);
X=star(X);
X=otimes(Kopt,X);
X=otimes(X,B);
X=otimes(X,Popt);
X=star(X);
X=otimes(Popt,X);
X=otimes(AB,X);

smatrix FCx,Kx;
FCx=otimes(FoptC,X);
Kx=otimes(Kopt,X);

cout<<" FCx "<<FCx<<endl;
cout<<" Kx "<<Kx<<endl; // this one is greater, it seems a good result


// below it appears that the observer based controller yields a greater control
// See Proposition 8
smatrix Xu,Xw;

Xu=otimes(Lopt,C);
Xu=oplus(A,Xu);
Xu=star(Xu);
Xu=otimes(Xu,B);
Xu=otimes(Kopt,Xu);

Xw=otimes(Lopt,C);
Xw=oplus(A,Xw);
Xw=star(Xw);
Xw=otimes(Xw,Lopt);
Xw=otimes(Xw,CA);
Xw=otimes(Kopt,Xw);

smatrix FCAB, FCAR;

FCAB=otimes(Fopt,CAB);
FCAR=otimes(Fopt,CA);

if(!(FCAB==Xu) || !(FCAR==Xw))
{
cout<<" FCAB " <<FCAB<<endl;
cout<<" Xu "<<Xu<<endl;
cout<<" FCAR " <<FCAR<<endl;
cout<<" Xw "<<Xw<<endl;
 printf("****\n");
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
