#include <iostream>
#include "../Test.h"
#include "../../parsers/parser.h"
#include "../factory/FactoryPolyEd.h"

using namespace std;
using namespace etvo;

namespace test
{
  void Test::TestBugs()
  {	
	  etvo::seriesEd s = parser::parseSeriesEd("(((g8.m3.b3.g2+g9.m3.b3).d3+(g11.m3.b3.g1+g13.m3.b3).d7+g13.m3.b3.d10+g17.m3.b3.d15))+[g14.d14]*.((g19.m3.b3.g2+g20.m3.b3).d17+g21.m3.b3.g1.d21+(g24.m3.b3.g1+g25.m3.b3).d25+(g28.m3.b3.g2+g29.m3.b3).d26+(g31.m3.b3.g2+g32.m3.b3).d29)");
    cout << s << endl;
	  s = s.star();
	  cout << s << endl;	
  }
}
