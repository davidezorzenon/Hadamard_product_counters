#pragma once
#include<string>
#include<strstream>


/*! \namespace graphicPR
* namespace for the POV-Ray class
*/
namespace graphicPR
{
	/*!
	* \class graphicPR::PovRay
	* \brief Used to generate POV-Ray scripts to draw 3D descriptions 
	* of polyEd and polyTg objects
	* \author BC LH JT LARIS
	* \version 2.0
	*/

  class PovRay
  {
  public:

	  /// the script description of a point in POV-Ray
    class Point
    {
    public:
      float x, y, z;
      Point(float X = 0, float Y = 0, float Z = 0) :x(X), y(Y), z(Z) {}
      std::string ToString() const
      {
        std::strstream sls;
        sls << "<" << x << "," << z << "," << y << ">" << '\0';
        return sls.str();
      }
    };

	/// the script description of a color in POV-Ray
    class Color
    {
    public:
      float r, g, b;
      Color(float R = 1, float G = 0, float B = 0) :r(R), g(G), b(B) {}
      std::string ToString() const
      {
        std::strstream sls;
        sls << "rgb<" << r << "," << g << "," << b << ">" << '\0';
        return sls.str();
      }
    };

	/// For a script description stored into the file named strFileName
    PovRay(const std::string & strFileName);
	
	/// Script for Axis creation for Ed elements
    void AxisEd();
	/// Script for Axis creation for Tg elements
	void AxisTg();

	/// Script header for Ed elements
    void Pov_StartEd();
	/// Script header for Tg elements
	void Pov_StartTg();
	/// Script closure
    void Pov_End();
	/// Save the script into the file
    void SaveToFile();

    void Box(Point pA, Point pB, Color c);
    void Sphere(Point centre, float rayon, Color c);
    void Cylinder(Point pA, Point pB, float rayon, Color c);
    void FaceXY(Point pA, Point pB);
    void FaceZ(Point pA, Point pB);
  public:
	/// Camera location in the scene
    Point LocationCamera;
	/// Point observed by the Camera into the scene
    Point CameraLookAt;
    Color CSurface;

    int xmin;
    int ymax;
    int zmin;
    int xmax;
    int zmax;
    int ymin;
    std::string fileNamePovRay;
    std::strstream ss;
  };

}
