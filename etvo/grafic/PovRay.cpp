#include "PovRay.h"


#include<string>
#include<fstream>

using namespace std;

static int bascule=0;

namespace graphicPR
{
  PovRay::PovRay(const string & str) :fileNamePovRay(str)
  {
    xmin = 0; ymin = 0; zmin = 0;
    xmax = 10; ymax = 10; zmax = 10;
    LocationCamera = Point(-10, -10, 10);
    CameraLookAt = Point(2, 2, 2);
  }

  void  PovRay::Pov_StartEd()
  {
    strstream & FichierPov = ss;
    if (bascule == 0) bascule = 1;
    else bascule = 0;
    FichierPov << " #include \"colors.inc\" " << endl;
    FichierPov << " #include \"shapes.inc\" " << endl;
    FichierPov << " #include \"math.inc\" " << endl;
    FichierPov << " #include \"functions.inc\" " << endl;
    FichierPov << " #declare surfCXY = color rgb<0.6,0.6,0.6>;\n";
    FichierPov << " #declare surfCZ = color rgb<0.6,0.6,0.6>;\n";
    FichierPov << " #declare mainColor = color rgb<0.8,0.3,0.3>;\n";
    FichierPov << " #declare axisColor = color rgb<0,0,0>;\n";

    //FichierPov << "#declare MaFonction = function {((x-floor(x))<0.97 & (y-floor(y))<0.97  & (z-floor(z))<0.97)}" << endl;
    FichierPov << " camera {location " << LocationCamera.ToString() << endl;
    FichierPov << "look_at " << CameraLookAt.ToString() << "}" << endl;
    FichierPov << "light_source{<100,100,-200> rgb<1,1,1>*2}" << endl;
    FichierPov << "background{rgb<0.9,0.9,0.9>}" << endl;

    FichierPov << "text { \n";
    FichierPov << " ttf \"timrom.ttf\" \"O-count\" 0.1, 0\n";
    FichierPov << " pigment { rgb<0.1,0.1,0.1> }\n";
    FichierPov << " rotate -90*y\n";
    FichierPov << "rotate +90*z \n";
    FichierPov << " translate -3.5*z \n";
    FichierPov << " translate 0.1*y scale 1} \n";

    FichierPov << "text { \n";
    FichierPov << " ttf \"timrom.ttf\" \"I-count\" 0.1, 0\n";
    FichierPov << " pigment { rgb<0.1,0.1,0.1> }\n";
    FichierPov << "     rotate +90*x\n";
    FichierPov << " translate -z \n";
    FichierPov << "  translate 1*x\n scale 1 }";
    FichierPov << "text { \n";
    FichierPov << " ttf \"timrom.ttf\" \"T-shift\" 0.1, 0\n";
    FichierPov << " pigment { rgb<0.1,0.1,0.1> }\n";
    FichierPov << "   rotate -90*z   \n";
    FichierPov << "   rotate -90*y \n";
    FichierPov << "   translate -z \n";
    FichierPov << "   translate +4*y scale 1 } \n";

    for (int i = 5; i < this->ymax; i += 5)
    {
      FichierPov << "text {ttf \"timrom.ttf\" \"" << i;
      FichierPov << " \" 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate -90*y  translate -z  translate ";
      FichierPov << i << "*y scale 1 } \n";
    }

    for (int i = 5; i < this->xmax; i += 5)
    {
      FichierPov << "text {ttf \"timrom.ttf\" \"" << i;
      FichierPov << " \" 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate ";
      FichierPov << i << "*x scale 1 }\n";
    }
  }

  void  PovRay::Pov_End()
  {
    ss << '\0';
  }


  void PovRay::AxisEd()
  {

    Cylinder(PovRay::Point(0, 0, 0), PovRay::Point((float)xmax, 0, 0), 0.1f, PovRay::Color(0.1f, 0.1f, 0.1f));
    Cylinder(PovRay::Point(0, 0, 0), PovRay::Point(0, (float)ymax, 0), 0.1f, PovRay::Color(0.1f, 0.1f, 0.1f));
    Cylinder(PovRay::Point(0, 0, 0), PovRay::Point(0, 0, (float)zmax), 0.1f, PovRay::Color(0.1f, 0.1f, 0.1f));


    for (int i = 0; i < xmax; i++)
    {
      if ((i % 5) == 0)
      {
        Cylinder(PovRay::Point((float)i, 0, 0), PovRay::Point((float)i, (float)ymax, 0), 0.05f, PovRay::Color(0.1f, 0.1f, 0.1f));
      }
      else
      {
        Cylinder(PovRay::Point((float)i, 0, 0), PovRay::Point((float)i, (float)ymax, 0), 0.02f, PovRay::Color(0.1f, 0.1f, 0.1f));
      }
    }

    for (int i = 0; i < ymax; i++)
    {
      if ((i % 5) == 0)
        Cylinder(PovRay::Point(0, (float)i, 0), PovRay::Point((float)xmax, (float)i, 0), 0.05f, PovRay::Color(0.1f, 0.1f, 0.1f));
      else
        Cylinder(PovRay::Point(0, (float)i, 0), PovRay::Point((float)xmax, (float)i, 0), 0.02f, PovRay::Color(0.1f, 0.1f, 0.1f));

    }

    for (int i = 0; i < zmax; i++)
    {
      if ((i % 5) == 0)
        Cylinder(PovRay::Point(0, 0, (float)i), PovRay::Point(0, (float)ymax, (float)i), 0.05f, PovRay::Color(0.1f, 0.1f, 0.1f));
      else
        Cylinder(PovRay::Point(0, 0, (float)i), PovRay::Point(0, (float)ymax, (float)i), 0.02f, PovRay::Color(0.1f, 0.1f, 0.1f));
    }

    for (int i = 0; i < ymax; i++)
    {
      if ((i % 5) == 0)
        Cylinder(PovRay::Point(0, (float)i, 0), PovRay::Point(0, (float)i, (float)zmax), 0.05f, PovRay::Color(0.1f, 0.1f, 0.1f));
      else
        Cylinder(PovRay::Point(0, (float)i, 0), PovRay::Point(0, (float)i, (float)zmax), 0.02f, PovRay::Color(0.1f, 0.1f, 0.1f));
    }

  }

  void  PovRay::Pov_StartTg()
  {
	  strstream & FichierPov = ss;
	  if (bascule == 0) bascule = 1;
	  else bascule = 0;
	  FichierPov << " #include \"colors.inc\" " << endl;
	  FichierPov << " #include \"shapes.inc\" " << endl;
	  FichierPov << " #include \"math.inc\" " << endl;
	  FichierPov << " #include \"functions.inc\" " << endl;
	  FichierPov << " #declare surfCXY = color rgb<0.6,0.6,0.6>;\n";
	  FichierPov << " #declare surfCZ = color rgb<0.6,0.6,0.6>;\n";
	  FichierPov << " #declare mainColor = color rgb<0.8,0.3,0.3>;\n";
	  FichierPov << " #declare axisColor = color rgb<0,0,0>;\n";

	  //FichierPov << "#declare MaFonction = function {((x-floor(x))<0.97 & (y-floor(y))<0.97  & (z-floor(z))<0.97)}" << endl;
	  FichierPov << " camera {location " << LocationCamera.ToString() << endl;
	  FichierPov << "look_at " << CameraLookAt.ToString() << "}" << endl;
	  FichierPov << "light_source{<-100,100,-80> rgb<1,1,1>*2}" << endl;
	  FichierPov << "background{rgb<0.9,0.9,0.9>}" << endl;

	  FichierPov << "text { \n";
	  FichierPov << " ttf \"timrom.ttf\" \"E-shift\" 0.1, 0\n";
	  FichierPov << " pigment { rgb<0.1,0.1,0.1> }\n";
	  FichierPov << " rotate +90*y\n";
	  FichierPov << "rotate -90*z \n";
	  FichierPov << " translate -1.5*z \n";
	  FichierPov << " translate 0.1*y scale 1} \n";

	  FichierPov << "text { \n";
	  FichierPov << " ttf \"timrom.ttf\" \"I-time\" 0.1, 0\n";
	  FichierPov << " pigment { rgb<0.1,0.1,0.1> }\n";
	  FichierPov << "     rotate +90*x\n";
	  FichierPov << " translate -z \n";
	  FichierPov << "  translate 1*x\n scale 1 }";
	  FichierPov << "text { \n";
	  FichierPov << " ttf \"timrom.ttf\" \"O-time\" 0.1, 0\n";
	  FichierPov << " pigment { rgb<0.1,0.1,0.1> }\n";
	  FichierPov << "   rotate +90*z   \n";
	  FichierPov << "   rotate +90*y \n";
	  FichierPov << "   translate -1*z \n";
	  FichierPov << "   translate +2*y scale 1 } \n";

	  for (int i = 5; i < this->ymax; i += 5)
	  {
		  FichierPov << "text {ttf \"timrom.ttf\" \"" << i;
		  FichierPov << " \" 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -1*y  translate ";
		  FichierPov << (i+1) << "*z scale 1 } \n";
	  }

	  for (int i = 5; i < this->xmax; i += 5)
	  {
		  FichierPov << "text {ttf \"timrom.ttf\" \"" << i;
		  FichierPov << " \" 0.1, 0 pigment { rgb<0.1,0.1,0.1> }   rotate +90*x  translate -z  translate ";
		  FichierPov << i << "*x scale 1 }\n";
	  }
  }


  void PovRay::AxisTg()
  {

	  Cylinder(PovRay::Point(0, 0, 0), PovRay::Point((float)xmax, 0, 0), 0.1f, PovRay::Color(0.1f, 0.1f, 0.1f));
	  Cylinder(PovRay::Point(0, 0, 0), PovRay::Point(0, (float)ymax, 0), 0.1f, PovRay::Color(0.1f, 0.1f, 0.1f));
	 // Cylindre(PovRay::Point(0, 0, 0), PovRay::Point(0, 0, (float)zmax), 0.05f, PovRay::Color(0.1f, 0.1f, 0.1f));


	  for (int i = 0; i < xmax; i++)
	  {
		  if ((i % 5) == 0)
		  {
			  Cylinder(PovRay::Point((float)i, 0, 0), PovRay::Point((float)i, (float)ymax, 0), 0.05f, PovRay::Color(0.1f, 0.1f, 0.1f));
			  Cylinder(PovRay::Point((float)i, (float)ymax, 0), PovRay::Point((float)i, (float)ymax,(float)zmax), 0.05f, PovRay::Color(0.1f, 0.1f, 0.1f));
		  }
		  else
		  {
			  Cylinder(PovRay::Point((float)i, 0, 0), PovRay::Point((float)i, (float)ymax, 0), 0.02f, PovRay::Color(0.1f, 0.1f, 0.1f));
			  Cylinder(PovRay::Point((float)i, (float)ymax, 0), PovRay::Point((float)i, (float)ymax, (float)zmax), 0.02f, PovRay::Color(0.1f, 0.1f, 0.1f));

		  }
	  }

	  for (int i = 0; i < ymax; i++)
	  {
		  if ((i % 5) == 0)
		  {
			  Cylinder(PovRay::Point(0, (float)i, 0), PovRay::Point((float)xmax, (float)i, 0), 0.05f, PovRay::Color(0.1f, 0.1f, 0.1f));
			  Cylinder(PovRay::Point((float)xmax, (float)i, 0), PovRay::Point((float)xmax, (float)i, (float)zmax), 0.05f, PovRay::Color(0.1f, 0.1f, 0.1f));

		  }
		  else
		  {
			  Cylinder(PovRay::Point(0, (float)i, 0), PovRay::Point((float)xmax, (float)i, 0), 0.02f, PovRay::Color(0.1f, 0.1f, 0.1f));
			  Cylinder(PovRay::Point((float)xmax, (float)i, 0), PovRay::Point((float)xmax, (float)i, (float)zmax), 0.02f, PovRay::Color(0.1f, 0.1f, 0.1f));
		  }

	  }

		  
	  for (int i = 0; i < zmax; i++)
	  {
		  if ((i % 5) == 0)
		  {
			  Cylinder(PovRay::Point(0, (float)ymax, (float)i), PovRay::Point((float)xmax, (float)ymax, (float)i), 0.05f, PovRay::Color(0.1f, 0.1f, 0.1f));
			  Cylinder(PovRay::Point((float)xmax,0, (float)i), PovRay::Point((float)xmax, (float)ymax, (float)i), 0.05f, PovRay::Color(0.1f, 0.1f, 0.1f));
		  }
		  else
		  {
			  Cylinder(PovRay::Point(0, (float)ymax, (float)i), PovRay::Point((float)xmax, (float)ymax, (float)i), 0.02f, PovRay::Color(0.1f, 0.1f, 0.1f));
			  Cylinder(PovRay::Point((float)xmax, 0, (float)i), PovRay::Point((float)xmax, (float)ymax, (float)i), 0.02f, PovRay::Color(0.1f, 0.1f, 0.1f));
		  }
	  }

	  /*
	  for (int i = 0; i < ymax; i++)
	  {
		  if ((i % 5) == 0)
			  Cylindre(PovRay::Point(0, (float)i, 0), PovRay::Point(0, (float)i, (float)zmax), 0.05f, PovRay::Color(0.1f, 0.1f, 0.1f));
		  //else
		 //	  Cylindre(PovRay::Point(0, (float)i, 0), PovRay::Point(0, (float)i, (float)zmax), 0.02f, PovRay::Color(0.1f, 0.1f, 0.1f));
	  }
	  */

  }

  void PovRay::FaceXY(Point pA, Point pB)
  {
    strstream & FichierPOV = ss;
    FichierPOV << "polygon { \n";
    FichierPOV << " 4, \n";
    FichierPOV << pA.ToString() << Point(pB.x, pB.y, pA.z).ToString();
    FichierPOV << pB.ToString() << Point(pA.x, pA.y, pB.z).ToString();
    FichierPOV << "pigment { color surfCXY}}\n";
  }

  void PovRay::FaceZ(Point pA, Point pB)
  {
    strstream & FichierPOV = ss;
    FichierPOV << "polygon { \n";
    FichierPOV << " 4, \n";
    FichierPOV << pA.ToString() << Point(pB.x, pA.y, pA.z).ToString();
    FichierPOV << pB.ToString() << Point(pA.x, pB.y, pB.z).ToString();
    FichierPOV << "pigment { color surfCZ}}\n";
  }
  void PovRay::Box(Point pA, Point pB, Color c)
  {
    strstream & FichierPOV = ss;


    if (bascule == 0)
    {
      FichierPOV << "box{" << pA.ToString() << "," << pB.ToString() << " " << endl;
      FichierPOV << " pigment{" << c.ToString() << "}}" << endl;
    }
    else
    {
      // test boites rondes	
      FichierPOV << "object { " << endl;
      // Round_Box(A, B, WireRadius, Merge)
      FichierPOV << " Round_Box(" << pA.ToString() << "," << pB.ToString() << ",0.125,0)" << endl;
      FichierPOV << "texture{" << endl;
      FichierPOV << " pigment{ color " << c.ToString() << "}" << endl;
      FichierPOV << " finish { phong 1}}" << endl;
      FichierPOV << " scale<1,1,1> " << endl;
      FichierPOV << "rotate<0,0,0>" << endl;
      FichierPOV << "translate<0,0,0> } " << endl;

      /*
      // Faire un pigment quadrillage (bof)
      FichierPOV << "pigment{ function{MaFonction(x,y,z)} " << endl;
      FichierPOV << "color_map { [0.0 color rgb <0.2,0,0>] " << endl;
      FichierPOV << "        [1.0 color " << c.ToString() << "]}}}" << endl; */
    }
  }

  void PovRay::Sphere(Point pA, float rayon, Color c)
  {
    strstream & FichierPOV = ss;
    FichierPOV << "sphere{" << pA.ToString() << "," << rayon << endl;
    FichierPOV << " pigment{" << c.ToString() << " filter .2 transmit .1}" << endl;
    FichierPOV << " finish{ reflection .2 phong .7}}" << endl;
  }

  void PovRay::Cylinder(Point pA, Point pB, float rayon, Color c)
  {
    if (pA.x != pB.x || pA.y != pB.y || pA.z != pB.z)
    {
      strstream & FichierPOV = ss;
      FichierPOV << "cylinder{" << pA.ToString() << "," << pB.ToString() << "," << rayon << endl;
      //FichierPOV << " pigment{ color " << c.ToString() << "}}" << endl;
      FichierPOV << " pigment{" << c.ToString() << " filter .2 transmit .1}" << endl;
      FichierPOV << " finish{ reflection .2 phong .6}}" << endl;
    }
  }

  void PovRay::SaveToFile()
  {
    ofstream FichierDxf(fileNamePovRay, ios::out);
    FichierDxf << ss.str();
  }

}