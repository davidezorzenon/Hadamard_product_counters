/* Example from 
He, Z., Li, Z., & Giua, A. (2018). 
Performance optimization for timed weighted marked graphs under infinite server 
semantics. IEEE Transactions on Automatic Control, 63(8), 2573-2580.
*/
#include <iostream>
#include <exception>
#include "etvo.h"

using namespace std;
using namespace etvo;

int main()
{
	matrix<seriesEd> A(18, 18);
	// initial marking
	//vector<unsigned > M={6,0,0,0,2,3,0,4,0,0,0,6,0,2};
	vector<unsigned > M={0,0,6,0,2,0,0,6,0,0,2,4,0,2};
	//vector<unsigned > M={0,0,7,3,0,5,1,0,1,8,0,0,1,1};
	
	A(0,5) = eg(M[2]); //x0=gM[2].x5+m3.x9
	A(0,9) = eg(M[8])*em(3); //x0=x5+gM[8].m3.x9	
	A(1, 0) = ed(1); //x1=d1.x0
	A(2, 1) = eg(M[0]); //x2=gM[0].x1+m3.x13
	A(2, 13) = eg(M[12])*em(3); //x2=g6.x1+m3.x13
	A(3, 2) = ed(3); //x3=d3.x2
	A(4, 3) = eg(M[1]); //x4=gM[1]x3+g2.x5
	A(4, 5) = eg(M[13]); //x4=x3+g2.x5
	A(5, 4) = ed(2); //x5=d2.x4
	A(6, 1) = eb(3)*eg(M[5]); //x6=b3.gM[5].x1
	A(7, 6) = ed(2); 
	A(8, 17) = eb(2)*eg(M[7]); //x8=b2.gM[7].x17
	A(9, 8) = ed(2); 
	A(10,3)=eb(3)*eg(M[9]); //x10=b3.gM[9].x3
	A(11,10)=ed(2);
	A(12,15)=eb(2)*eg(M[11]);//x12=b2.g6.x15
	A(13,12)=ed(2);
	A(14,11)=eg(M[10])*em(2);  //x14=gM[10].m2.x11+g2.x17
	A(14,17)=eg(M[4]);  //x14=m2.x11+g2.x17
	A(15,14)=ed(1);
	A(16,15)=eg(M[3]);
	A(16,7)=eg(M[6])*em(2);
	A(17,16)=ed(2);		
	cout << A << endl;	
	// computation of A* 
	matrix<seriesEd> As = A.star();
	cout << As << endl;		
}

 
  
  


 
