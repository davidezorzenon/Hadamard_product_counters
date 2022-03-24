#include <iostream>
#include "../Test.h"
#include "../factory/FactorySeriesTg.h"

using namespace std;
using namespace etvo;

namespace test
{
  void Test::TestPov()
  {
	FactorySeriesTg f1(5,5, gd(5, 5),false,false,true,gd(0,1),4);
	seriesTg s1;
	s1 = f1.create();
	cout << "s=" << s1.toStringAsDeltaVar() << endl;
	polyTg pTrans = s1.getPolyUpTo(20);
    graphicPR::PovRay pr("sortiePTEG3.pov");
	pr.LocationCamera = graphicPR::PovRay::Point(-20, -20, +20);
	pr.CameraLookAt = graphicPR::PovRay::Point(0, 0, 2);
    pr.xmax = 30;
    pr.ymax = 30;
    pr.zmax = 30;
    pr.xmin = 0;
    pr.ymin = 0;
    pr.zmin = 0;
	pr.Pov_StartTg();
    pr.AxisTg();
	pTrans.toPov(pr, graphicPR::PovRay::Color(0, 0, 1));
	pr.Pov_End();
    pr.SaveToFile();
  }
}
