
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

double min(double a,double b)
{
		if(a>b) return b;
		else return a;
}
/////////////////////////////////////////////////////////////////////
/* Example : Hardouin L.,Cottenceau B., Lhommeau M., Le Corronc E.

Interval Analysis and Semiring, Resolution of equations.
Submitted to Linear Algebra and its Applications
needs library lminmaxgd,
download http://www.istia.univ-angers.fr/~hardouin/libminmaxgd250807.zip
Library lmmgd.ilib and include files *.h
*/
/////////////////////////////////////////////////////////////////////

using namespace mmgd;

int main()
{
	smatrix AL(2,2); // lower bound matrix A
	smatrix AU(2,2); // upper bound matrix A
	smatrix xL(2,1); // lower bound vector x
	smatrix xU(2,1); // upper bound vector x
	smatrix x0L(2,1); // lower bound vector x_0
	smatrix x0U(2,1);  // upper bound vector x_0
	smatrix yL(3,1);   // lower bound vector y
	smatrix yU(3,1);  // upper bound vector y
	smatrix BL(2,3);  // lower bound matrix B
	smatrix BU(2,3); // upper bound matrix B
	smatrix T1;
	smatrix T2;
	smatrix T3;
	int i=0;

  // Interval matrix A
	AL(0,0)=gd(0,2); AU(0,0)=gd(0,3);
	AL(0,1)=gd(0,5); AU(0,1)=gd(0,9);
	AL(1,0)=gd(0,7); AU(1,0)=gd(0,8);
	AL(1,1)=gd(0,3); AU(1,1)=gd(0,6);

   //	Interval vector x

	xL(0,0)=gd(0,4); xU(0,0)=gd(0,7);
	xL(1,0)=gd(0,3); xU(1,0)=gd(0,5);

	//	Interval matrix B
	BL(0,0)=gd(0,1); BU(0,0)=gd(0,9);
	BL(0,1)=gd(0,2); BU(0,1)=gd(0,5);
	BL(0,2)=gd(0,3); BU(0,2)=gd(0,4);
	BL(1,0)=gd(0,1); BU(1,0)=gd(0,13);
	BL(1,1)=gd(0,3); BU(1,1)=gd(0,10);
	BL(1,2)=gd(0,9); BU(1,2)=gd(0,10);

    std::cout<<"Computation of a pair of intervals (x,y) such that A x = B y in max plus algebra "<<std::endl;
	std::cout<<" Matrix A :"<<std::endl;
	std::cout<<"A(1)(1)= ["<<AL(0,0).getq().getpol(0).getd()<<","<<AU(0,0).getq().getpol(0).getd()<<"]"<<std::endl;
	std::cout<<"A(1)(2)= ["<<AL(0,1).getq().getpol(0).getd()<<","<<AU(0,1).getq().getpol(0).getd()<<"]"<<std::endl;
	std::cout<<"A(2)(1)= ["<<AL(1,0).getq().getpol(0).getd()<<","<<AU(1,0).getq().getpol(0).getd()<<"]"<<std::endl;
	std::cout<<"A(2)(2)= ["<<AL(1,1).getq().getpol(0).getd()<<","<<AU(1,1).getq().getpol(0).getd()<<"]"<<std::endl;

	std::cout<<" Matrix B :"<<std::endl;

	std::cout<<"B(1)(1)= ["<<BL(0,0).getq().getpol(0).getd()<<","<<BU(0,0).getq().getpol(0).getd()<<"]"<<std::endl;
	std::cout<<"B(1)(2)= ["<<BL(0,1).getq().getpol(0).getd()<<","<<BU(0,1).getq().getpol(0).getd()<<"]"<<std::endl;
	std::cout<<"B(1)(3)= ["<<BL(0,2).getq().getpol(0).getd()<<","<<BU(0,2).getq().getpol(0).getd()<<"]"<<std::endl;
	std::cout<<"B(2)(1)= ["<<BL(1,0).getq().getpol(0).getd()<<","<<BU(1,0).getq().getpol(0).getd()<<"]"<<std::endl;
	std::cout<<"B(2)(2)= ["<<BL(1,1).getq().getpol(0).getd()<<","<<BU(1,1).getq().getpol(0).getd()<<"]"<<std::endl;
	std::cout<<"B(2)(3)= ["<<BL(1,2).getq().getpol(0).getd()<<","<<BU(1,2).getq().getpol(0).getd()<<"]"<<std::endl;

	std::cout<<"Initial Vector x :"<<std::endl;
	std::cout<<"x(1)= ["<<xL(0,0).getq().getpol(0).getd()<<","<<xU(0,0).getq().getpol(0).getd()<<"]"<<std::endl;
	std::cout<<"x(2)= ["<<xL(1,0).getq().getpol(0).getd()<<","<<xU(1,0).getq().getpol(0).getd()<<"]"<<std::endl;

	do
	{
	x0L=xL;x0U=xU; // value memorization
	// computing of x= \Pi(x)
	T1=otimes(AU,xU);
	T2=lfrac(T1,BU);
	T3=otimes(BU,T2);
	xU=lfrac(T3,AU); // otimes: max plus product and lfrac: left residuation
	T1=otimes(AL,xL);
    xL=lfrac(T1,BL);
    T2=otimes(AU,xU);
    T3=lfrac(T2,BU);
	xL=inf(xL,T3); // inf : min operator
	T1=otimes(BL,xL);
	xL=lfrac(T1,AL);
	xL=inf(xL,xU);

	i++;
	if (!(x0L==xL) && !(x0U==xU))
	{
	std::cout<<" iteration number :"<<i<<std::endl;
	std::cout<<"vector x(1)= ["<<xL(0,0).getq().getpol(0).getd()<<","<<xU(0,0).getq().getpol(0).getd()<<"]"<<std::endl;
	std::cout<<"vector x(2)= ["<<xL(1,0).getq().getpol(0).getd()<<","<<xU(1,0).getq().getpol(0).getd()<<"]"<<std::endl;
	}
	}
	while(i<10 && !(x0L==xL) && !(x0U==xU)  );

	if ((x0L==xL) && (x0U==xU)) std::cout<<"Convergence Achieved"<<std::endl;


	std::cout<<"Computation of y = B\\(A x)"<<std::endl;
    T1=otimes(AU,xU);
	yU=lfrac(T1,BU);
	T1=otimes(AL,xL);
	T2=lfrac(T1,BL);
	yL=inf(T2,yU);

	std::cout<<"Vector  y = B\\(A x)"<<std::endl;
	std::cout<<"y(1)= ["<<yL(0,0).getq().getpol(0).getd()<<","<<yU(0,0).getq().getpol(0).getd()<<"]"<<std::endl;
	std::cout<<"y(2)= ["<<yL(1,0).getq().getpol(0).getd()<<","<<yU(1,0).getq().getpol(0).getd()<<"]"<<std::endl;
	std::cout<<"y(3)= ["<<yL(2,0).getq().getpol(0).getd()<<","<<yU(2,0).getq().getpol(0).getd()<<"]"<<std::endl;
/* just for verification */
/*	if (otimes(AL,xL)==otimes(BL,yL) )
		std::cout<<"Yes AL xL"<<otimes(AL,xL)<<std::endl;
	if (otimes(AU,xU)==otimes(BU,yU) )
		std::cout<<" Yes Again AU xU"<<otimes(AU,xU)<<std::endl;

		std::cout<<"  AU x0U"<<otimes(AU,x0U)<<std::endl;
		std::cout<<"  AL x0L"<<otimes(AL,x0L)<<std::endl;
*/
	std::cout<<"Press Enter to continue "<<std::endl;
	fflush(stdin);getchar();

}

