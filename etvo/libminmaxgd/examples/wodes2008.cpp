
#ifndef _WIN32
#include "../include/lminmaxgd.h"
#else
#include "..\include\lminmaxgd.h"

#endif
#include <time.h>
using namespace std;
#include <iostream>
#include <time.h>
#include "..\src\gd.cpp"
#include "..\src\poly.cpp"
#include "..\src\serieodotinprogress.cpp"
#include "..\src\smatrix.cpp"
#include "..\src\tools.cpp"


double min(double a,double b)
{
		if(a>b) return b;
		else return a;
}
/////////////////////////////////////////////////////////////////////
/* Example :  Hardouin L., Cottenceau B., Lagrange S., Le Corronc E.

Performance analysis of linear systems over idempotent semiring with additive inputs
Wodes 2008, Goteborg, Sweden
	*/
/////////////////////////////////////////////////////////////////////
using namespace mmgd;

int main()
{
	smatrix A(2,2);
	smatrix AS(2,2);
	smatrix B(2,1);
	smatrix C(1,2);
	smatrix CAS(1,2);
	smatrix CAB(1,1);
	serie CABpoly;

	serie beta1,beta2,beta3;
	serie Alpha1,Alpha2,Alpha3;
	serie Alpha11,Alpha12,Alpha13,Alpha14;
	serie Alpha11bis,Alpha12bis,Alpha13bis,Alpha14bis;
	serie OutAlpha2,OutAlpha3,OutAlpha1,OutAlpha4;
	serie u1,u2,u3;
	serie y1,y2,y3;
	serie y1bis,y2bis,y3bis;
	serie u1bis,u2bis,u3bis;
	serie bb1,bb2,bb3;
	poly epoly;

	poly  pAlpha2,pAlpha3,pAlpha1,pAlpha4;
	poly p1;
	poly p2;
	poly p;
	poly p3;
	gd a;
	gd m;
	gd r;


	// System of figure 1, Wodes 2008 About maximal flow for linear systems over semiring
	A(0,0).init(epsilon,m.init(2,5),e);
	A(0,1).init(epsilon,m.init(1,0),e);
	A(1,0).init(epsilon,m.init(0,1),e);
	A(1,1).init(epsilon,m.init(1,2),e);

	B(0,0).init(epsilon,m.init(0,0),e);
	B(1,0).init(epsilon,m.init(0,0),e);
	C(0,1).init(epsilon,m.init(0,0),e);


	AS=star(A);
	CAS=otimes(C,AS);
	CAB=otimes(CAS,B);

	// system of figure 5, Wodes 2008 About maximal flow for linear systems over semiring
	beta1=CAB(0,0);

	beta2.init(epsilon,m.init(0,5),r.init(2,6));
	beta3.init(epsilon,m.init(0,7),r.init(8,5));


    // alpha (s1,.) figure 5
	pAlpha1.init(0,0)(2,10)(4,19)(5,infinit);
	//pAlpha1=oplus(pAlpha1,gd(2,10));
	//pAlpha1=oplus(pAlpha1,gd(4,19));
	//pAlpha1=oplus(pAlpha1,gd(5,infinit));

	Alpha1.init(epsilon,pAlpha1,e);

    // alpha(s2,.) figure 5
	pAlpha2.init(0,0)(1,9)(2,19)(3,infinit);
	//pAlpha2=oplus(pAlpha2,gd(1,9));
	//pAlpha2=oplus(pAlpha2,gd(2,15));
	//pAlpha2=oplus(pAlpha2,gd(3,infinit));

	Alpha2.init(epsilon,pAlpha2,e);

    gd temp(30,infinit);
    u1.init(e,temp,e);
	//u1=odot(oplus(u1.getp(),u1.getq()),pAlpha1);
	y1=otimes(beta1,u1);

	u2=odot(oplus(y1.getp(),y1.getq()),pAlpha2);
	y2=otimes(beta2,u2);

	// alpha(.,e2)
	pAlpha3.init(0,6)(2,18)(4,26)(5,infinit);
	//pAlpha3=oplus(pAlpha3,gd(2,18));
	//pAlpha3=oplus(pAlpha3,gd(4,26));
	//pAlpha3=oplus(pAlpha3,gd(5,infinity));

	//OutAlpha3.init(epsilon,pAlpha3,e);
	poly pt=oplus(y2.getp(), y2.getq());
	serie st(pt);
	serie st2(pAlpha3);

	//u3=fracodotflat(oplus(y2.getp(),y2.getq()),pAlpha3);
	u3 = fracodotflat(st, st2);
	y3=otimes(beta3,u3);

	// alpha(,e3)
	pAlpha4.init(0,30)(1,33)(2,39)(3,infinit);

	//OutAlpha4.init(epsilon,pAlpha4,e);



	Alpha14=fracodotflat(oplus(y3.getp(),y3.getq()),pAlpha4);

   	std::cout << " beta1 :" << std::endl << beta1<< std::endl;
	std::cout << " beta2 :" << std::endl << beta2<< std::endl;
	std::cout << " beta3 :" << std::endl << beta3<< std::endl;

	std::cout << " pAlpha1 :" << std::endl << pAlpha1<< std::endl;
	std::cout << " pAlpha2 :" << std::endl << pAlpha2<< std::endl;
	std::cout << " pAlpha3 :" << std::endl << pAlpha3<< std::endl;
	std::cout << " pAlpha4 :" << std::endl << pAlpha4<< std::endl;


	std::cout << " u1 :" << std::endl << u1<< std::endl;
	std::cout << " y1 :" << std::endl << y1<< std::endl;
	std::cout << " u2 :" << std::endl << u2<< std::endl;
	std::cout << " y2 :" << std::endl << y2<< std::endl;
	std::cout << " u3 :" << std::endl << u3<< std::endl;
	std::cout << " y3 :" << std::endl << y3<< std::endl;

	std::cout << " Alpha14 :" << std::endl << Alpha14<< std::endl;


 getchar();

	y3bis=odot(oplus(Alpha14.getp(),Alpha14.getq()),pAlpha4);
    if (oplus(y3,y3bis)==y3bis) std::cout << " OK y3 " << std::endl;
	u3bis=frac(y3bis,beta3);
	if (oplus(u3,u3bis)==u3bis) std::cout << " OK u3 " << std::endl;
	y2bis=odot(oplus(u3bis.getp(),u3bis.getq()),pAlpha3);
	if (oplus(y2,y2bis)==y2bis) std::cout << " OK y2 " << std::endl;
	u2bis=frac(y2bis,beta2);
	if (oplus(u2,u2bis)==u2bis) std::cout << " OK u2 " << std::endl;
	y1bis=fracodotsharp(oplus(u2bis.getp(),u2bis.getq()),pAlpha2);
	if (oplus(y1,y1bis)==y1bis) std::cout << " OK y1 " << std::endl;
	//y1bis=fracodotsharp(odot(oplus(y1.getp(),y1.getq()),pAlpha2),pAlpha2);
	u1bis=frac(y1bis,beta1);
	if (oplus(u1,u1bis)==u1bis) std::cout << " OK u1 " << std::endl;
	Alpha11=fracodotsharp(oplus(u1bis.getp(),u1bis.getq()),pAlpha1);

	std::cout << " y3bis :" << std::endl << y3bis<< std::endl;
	std::cout << " u3bis :" << std::endl << u3bis<< std::endl;
	std::cout << " y2bis :" << std::endl << y2bis<< std::endl;

	std::cout << " u2bis :" << std::endl << u2bis<< std::endl;

	std::cout << " y1 :" << std::endl << y1<< std::endl;
	std::cout << " y1bis :" << std::endl << y1bis<< std::endl;

	std::cout << " u1bis :" << std::endl << u1bis<< std::endl;
	std::cout << " Alpha11:" << std::endl << Alpha11<< std::endl;








	//y1bis=odot(p1,pAlpha2);

	std::cout << " p1 :" << std::endl << p1<< std::endl;
	std::cout << " pAlpha2 :" << std::endl << pAlpha2<< std::endl;
	std::cout << " y1bis :" << std::endl << y1bis<< std::endl;



    u1=odot(oplus(Alpha11.getp(),Alpha11.getq()),pAlpha1);;
	y1=otimes(beta1,u1);

	u2=odot(oplus(y1.getp(),y1.getq()),pAlpha2);
	y2=otimes(beta2,u2);

	u3=fracodotflat(oplus(y2.getp(),y2.getq()),pAlpha3);
	y3=otimes(beta3,u3);





	Alpha14bis=fracodotflat(oplus(y3.getp(),y3.getq()),pAlpha4);
	std::cout << " Alpha14bis :" << std::endl << Alpha14bis<< std::endl;
	std::cout << " Alpha14 :" << std::endl << Alpha14<< std::endl;
	if((oplus(Alpha14bis,Alpha14)==Alpha14bis))
		std::cout<<"OK"<<std::endl;





/*
    Alpha11=fracodotsharp(oplus(bb1.getp(),bb1.getq()),oplus(u1.getp(),u1.getq()));
	Alpha11=oplus(epoly,gd(30,infinity)); // On met e en entrée
	y1bis=odot(oplus(u1.getp(),u1.getq()),oplus(Alpha11.getp(),Alpha11.getq()));
	y1bis=otimes(beta1,y1bis);

	Alpha12bis=fracodotflat(oplus(y1bis.getp(),y1bis.getq()),oplus(y1.getp(),y1.getq()));
	Alpha12=fracodotsharp(oplus(bb2.getp(),bb2.getq()),oplus(u2.getp(),u2.getq()));

	//Alpha12=oplus(Alpha12,Alpha12bis); // utile ou pas utile ???
	Alpha12=Alpha12bis;
	y2bis=odot(oplus(u2.getp(),u2.getq()),oplus(Alpha12.getp(),Alpha12.getq()));
	y2bis=otimes(beta2,y2bis);

	Alpha13bis=fracodotflat(oplus(y2bis.getp(),y2bis.getq()),oplus(y2.getp(),y2.getq()));
	Alpha13=fracodotsharp(oplus(bb3.getp(),bb3.getq()),oplus(u3.getp(),u3.getq()));

	//Alpha13=oplus(Alpha13,Alpha13bis); // utile ou pas utile ???
	Alpha13=Alpha13bis;
	y3bis=odot(oplus(u3.getp(),u3.getq()),oplus(Alpha13.getp(),Alpha13.getq()));
	y3bis=otimes(beta3,y3bis);

	OutAlpha1=fracodotflat(oplus(y3bis.getp(),y3bis.getq()),oplus(y3.getp(),y3.getq()));


     poly OutputBeta3=odot(OutAlpha1,oplus(y3bis.getp(),y3bis.getq());

	 poly InputBeta3=frac(Outputbeta3,beta3);

     poly OutputBeta 2 fracodotsharp(InputBeta3,pAlpha2));

	poly InputBeta2=frac(Outputbeta3,beta3);

	std::cout << " Alpha11 :" << std::endl << Alpha11<< std::endl;
	std::cout << " y1bis :" << std::endl << y1bis<< std::endl;

	std::cout << " Alpha12 :" << std::endl << Alpha12<< std::endl;
	std::cout << " y2bis :" << std::endl << y2bis<< std::endl;

	std::cout << " Alpha13 :" << std::endl << Alpha13<< std::endl;
	std::cout << " y3bis :" << std::endl << y3bis<< std::endl;

	std::cout << " OutAlpha1 :" << std::endl << OutAlpha1<< std::endl;


*/
	// example figure 2


	p3.init(0,0)(5,2)(7,8);
	//p3=oplus(p3,gd(5,2));
	//p3=oplus(p3,gd(7,8));

	p1.init(0,0)(2,2)(7,5)(13,infinity);
	//p1=oplus(p1,gd(2,2));
	//p1=oplus(p1,gd(7,5));
	//p1=oplus(p1,gd(13,infinity));


 	p2.init(0,3)(4,8)(8,infinity);
	//p2=oplus(p2,gd(4,8));
	//p2=oplus(p2,gd(8,infinity));

    gd m1(2,infinity);
    gd m2(3,infinity);
	p=fracodotsharp(m1,m2);
	std::cout << " p  :" << std::endl <<p<< std::endl;
	p3=fracodotflat(p1,p2);

	p=odot(p3,p2);

	std::cout << " p1 :" << std::endl << p1<< std::endl;
	std::cout << " p2 :" << std::endl <<p2<< std::endl;
	std::cout << " p3 =fracodotflat(p1,p2);" << std::endl <<p3<< std::endl;
	std::cout << " p  =odot(p3,p2);:" << std::endl <<p<< std::endl;
	/*

	p3=oplus(p3,p1);
	p2=fracodotflat(p1,p3);
	p=odot(p1,p3);


	std::cout << "p :" << std::endl <<p<< std::endl;
	std::cout << "p2 :" << std::endl <<p2<< std::endl;

	*/




}

