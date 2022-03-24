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
(IEEE TAC, 2010)
// see also animation on http://perso-laris.univ-angers.fr/~hardouin/Observer.html
// you must link with a library which contains all source files given in folder src
// gd.cpp poly.cpp serie.cpp smatrix.cpp tools.cpp interf.cpp
// or add these files in your project
// or alternatively you can include the folowing files, it is the most friendly to do
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

	smatrix A(4,4);	// matrice d'état

	smatrix Lopt,L1,L2,Loptcausal;
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
	A(3,1)=gd(0,3);

	smatrix C(2,4);	// output matrix only coefficient on diagonl equal to e or epsilon

    C(0,2)=gd(0,0);
    C(1,3)=gd(0,0);
    smatrix B(4,2);	// matrix of inputs, epsilon everywhere
	B(0,0)=gd(0,1);
	B(1,1)=gd(0,3);

	smatrix R(4,4); // matrix connecting the uncontrollable input and the state
	R(0,0)=gd(0,0);
	R(1,1)=gd(0,0);
    R(2,2)=gd(0,0);

	smatrix As=star(A);
	CA=otimes(C,As);  // CA*

    AB=otimes(As,B);
    CAB=otimes(C,AB); // CA*B, the input output transfer matrix

cout<<" CAB"<<CAB<<endl;
    AR=otimes(As,R);
    CAR=otimes(C,AR); // CA*R, the disturbance output transfer matrix


cout<<" CAR"<<CAR<<endl;

	L1=rfrac(AB,CAB);
	L2=rfrac(AR,CAR);
	Lopt=inf(L1,L2); // the uncausal observer

cout<<"Lopt noncausal : " <<Lopt<<endl;
	Loptcausal=prcaus(Lopt); // the causal projection of the oberver matrix
    Lopt=Loptcausal;


cout<<"Lopt causal : " <<Loptcausal<<endl;

// Below we check the Corallary 2


smatrix Yu;
Yu=otimes(Loptcausal,C);
Yu=oplus(A,Yu);
Yu=star(Yu);
Yu=otimes(C,Yu);
Yu=otimes(Yu,B);

smatrix Yw;
Yw=otimes(Loptcausal,C);
Yw=oplus(A,Yw);
Yw=star(Yw);
Yw=otimes(C,Yw);
Yw=otimes(Yw,Loptcausal);
Yw=otimes(Yw,CAR);

if (Yu==Yw)
{

cout<<" Corollary 2 is satified, the estimated output and the real output are equal "<<endl;
cout<<"Yu : " <<Yu<<endl;
cout<<"Yw : " <<Yw<<endl;
}


Gref=CAB; // reference model is chosen equal to the system, we want to keep the input ouptu performance and delaying as much as possible the input
cout<<" Gref "<<Gref<<endl;

Popt=lfrac(Gref,CAB); // the prefilter

cout<<" Popt non  causal  "<<Popt<<endl;

smatrix Popt_causal=prcaus(Popt);

cout<<" Popt  causal  "<<Popt_causal<<endl;

Kopt=otimes(AB,Popt);
Kopt=rfrac(Popt,Kopt);
Kopt=lfrac(Kopt,Popt);

cout<<" Kopt non causal"<<Kopt<<endl; // the state feedback controller

Fopt=rfrac(Kopt,C); // the ouput feedback controller

cout<<" Fopt non causal "<<Fopt<<endl;

// causal projection
Kopt=prcaus(Kopt);

Fopt=prcaus(Fopt);


cout<<" Fopt "<<Fopt<<endl;

cout<<" Kopt "<<Kopt<<endl;

// From now I try to enlighten that the strategy with oberverbasedcontrol is better than
// the feedback, I need your help Ying... :)
smatrix FoptC;
FoptC=otimes(Fopt,C);


// Below it appears that the observer based controller yields a greater control
// See Proposition 8
smatrix Xu,Xw;

Xu=otimes(Lopt,C);
Xu=oplus(A,Xu);
Xu=star(Xu);
Xu=otimes(Xu,B);
Xu=otimes(Kopt,Xu); // the transfer Kopt(A+LoptC)*B

Xw=otimes(Lopt,C);
Xw=oplus(A,Xw);
Xw=star(Xw);
Xw=otimes(Xw,Lopt);
Xw=otimes(Xw,CAR);
Xw=otimes(Kopt,Xw); // the transfer Kopt((A+LoptC)*)(LoptCA*)R

smatrix FCAB, FCAR;

FCAB=otimes(Fopt,CAB);
FCAR=otimes(Fopt,CAR);

if(!(FCAB==Xu) || !(FCAR==Xw))
{
cout<<" FCAB " <<FCAB<<endl;
cout<<" Xu "<<Xu<<endl;
cout<<" FCAR " <<FCAR<<endl;
cout<<" Xw "<<Xw<<endl;
smatrix test1=oplus(FCAB,Xu);
smatrix test2=oplus(FCAR,Xw);
if ((test1==Xu) && (test2==Xw))
    {
        cout<<" the oberver-based controller yields a greater control than the output feedback control "<<endl;
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
