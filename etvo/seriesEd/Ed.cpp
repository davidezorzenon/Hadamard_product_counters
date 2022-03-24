#include "Ed.h"
#include "polyEd.h"
#include "seriesEd.h"
#include "../common/EtvoTools.h"
#include<sstream>

using namespace graphicPR;

namespace etvo
{
std::ostream & operator<<(std::ostream & st,const Ed & m)
{
    st<<m.toString();
    return st;
}

Ed Ed::g(int n){	return Ed(E_op::Gamma(n),0);}
Ed Ed::m(unsigned m){	return Ed(E_op::Mu(m),0);}
Ed Ed::N(unsigned m,unsigned b) { return Ed(E_op::Nabla(m,b), 0); }
Ed Ed::N(unsigned mb) { return Ed(E_op::Nabla(mb), 0); }
Ed Ed::b(unsigned b){	return Ed(E_op::Beta(b),0); }
Ed Ed::d(int t){ 	return  Ed(E_op::E(),t); }

Ed Ed::E()
{
  return Ed();
}

Ed::Ed():_w(E_op::E()),_d(0){ }

Ed::Ed(int n, int t):_d(t),_w(E_op::Gamma(n))
{
}

Ed::Ed(int n,unsigned m,unsigned b,int np,int t) : _d(t), _w(gNg(n,m,b,np))
{
}

Ed::Ed(int n, unsigned nabla,int np, int t) : _d(t), _w(gNg(n,nabla,np))
{
}

Ed::Ed(const E_op & w,int d):_d(d),_w(w)
{
}

E_op Ed::getE_op() const
{
    return _w;
}
void Ed::setE_op(const E_op & w)
{
    _w=w;
}

int Ed::getD() const
{
return _d;
}

void Ed::setD(int d )
{
    _d=d;
}

void Ed::getGain(unsigned int & mu, unsigned int & beta) const
{
    beta=_w.getB();
    mu = _w.getM();   
}

std::string Ed::toStringAsMuVar() const
{
  std::stringstream ss;
  ss << _w.toStringAsMuVar() << ".d" << _d;
  return ss.str();
}

std::string Ed::toString() const
{
    std::stringstream ss;
    if(_w.getTerms().size()>1)
      ss << "(" << _w.toString() << ").d" << _d;
    else 
      ss << _w.toString() << ".d" << _d;
    return ss.str();
}

Ed Ed::operator*(const Ed & m) const
{
    return Ed(_w*m._w,_d+m._d);
}

Ed Ed::otimes(const Ed & m) const
{
  return (*this)*m;
}

polyEd Ed::operator*(const polyEd & p) const
{
  return polyEd::otimes(*this,p);
}

polyEd Ed::otimes(const polyEd & p) const
{
  return (*this)*p;
}

seriesEd Ed::operator*(const seriesEd & s) const
{
  return seriesEd::otimes(*this, s);
}
seriesEd Ed::otimes(const seriesEd & s) const
{
  return (*this)*s;
}

void Ed::canon()
{
    _w.reduce();
}

Ed Ed::inf(const Ed & m)const
{
    return Ed(_w.inf(m._w),Tools::Min(_d,m._d));
}

polyEd Ed::oplus(const Ed & m) const
{
  return polyEd(*this) + m;
}
polyEd Ed::operator+(const Ed & m) const
{
  return oplus(m);
}

polyEd Ed::oplus(const polyEd & p) const
{
  return polyEd(*this) + p;
}
polyEd Ed::operator+(const polyEd & p) const
{
  return oplus(p);
}

Ed Ed::lfrac(const Ed & m) const
{
    return Ed(_w.lfrac(m._w),_d-m._d);
}
Ed Ed::rfrac(const Ed & m) const
{
    return Ed(_w.rfrac(m._w),_d-m._d);
}

bool Ed::operator==(const Ed & m)const
{
    return ((_d==m._d) &&(_w==m._w));
}

bool Ed::operator!=(const Ed & m)const
{
  return !((*this)==m);
}

bool Ed::operator>=(const Ed & m) const
{
     return ((_d>=m._d) &&(_w>=m._w));
}
bool Ed::operator<=(const Ed & m) const
{
     return ((_d<=m._d) &&(_w<=m._w));
}

void Ed::toPov(graphicPR::PovRay & pov, PovRay::Color c, Ed * prec , Ed* next)
{
  // to improve by using prec and next
  //  float quadriEpais = 0.1F;
  //  float rtube = 0.15F;
  // int yprofond;
  float rsphere = 0.18F;
  float quadriFin = 0.05F;

  float quadri = quadriFin;
  int x, y, ynext; 
  //int xprec,zbas;
  PovRay::Color csurf(0.3F, 0.3F, 0.3F);
  PovRay::Color ctubes(0, 0, 0);

  for (x = pov.xmin; x <= pov.xmax; x++)
  {
    y = this->_w.Fw(x);
    if (x<pov.xmax)	ynext = this->_w.Fw(x + 1);
    else ynext = y;

    if (y<pov.ymax)
    {
      pov.Sphere(PovRay::Point((float)x, (float)y, (float)this->_d), rsphere, c);

      //if(suiv==NULL){
      //	if(_e.GetKOut(x)!=_e.GetKOut(x+1))	pov.Sphere(PovRay2::Point(x,y,_delta),rsphere,c);
      //}
      //else{
      //	if(_e.GetKOut(x)!=_e.GetKOut(x+1) /*&& (_e.GetKOut(x)!=suiv->GetE().GetKOut(x))*/)
      //		pov.Sphere(PovRay2::Point(x,y,_delta),rsphere,c);				
      //}
      if (x != pov.xmin) {
        pov.Cylinder(PovRay::Point((float)x, (float)y, (float)_d), PovRay::Point((float)(x - 1), (float)y, (float)_d), quadri, ctubes);
        pov.FaceXY(PovRay::Point((float)x, (float)y, (float)_d), PovRay::Point((float)(x - 1), (float)y, (float)pov.zmin));
        pov.FaceZ(PovRay::Point((float)x, (float)y, (float)_d), PovRay::Point((float)(x - 1), (float)pov.ymax, (float)_d));
      }
      pov.Cylinder(PovRay::Point((float)x, (float)y, (float)_d), PovRay::Point((float)x, (float)y, (float)pov.zmin), quadri, ctubes);
      pov.Cylinder(PovRay::Point((float)x, (float)y, (float)_d), PovRay::Point((float)x, (float)pov.ymax, (float)_d), quadri, ctubes);
      if (y != ynext)
      {
        for (int i = y + 1; i <= ynext; i++)
        {
          pov.Cylinder(PovRay::Point((float)x, (float)i, (float)_d), PovRay::Point((float)pov.xmin, (float)i, (float)_d), quadri, ctubes);
          pov.Cylinder(PovRay::Point((float)x, (float)i, (float)_d), PovRay::Point((float)x, (float)i, (float)pov.zmin), quadri, ctubes);
          pov.FaceXY(PovRay::Point((float)x, (float)i, (float)_d), PovRay::Point((float)x, (float)(i - 1), (float)pov.zmin));
        }

        quadri = quadriFin;
        for (int i = this->_d - 1; i>pov.zmin; i--)
        {
          pov.Cylinder(PovRay::Point((float)x, (float)y, (float)i), PovRay::Point((float)pov.xmin, (float)y, (float)i), quadri, ctubes);
          pov.Cylinder(PovRay::Point((float)x, (float)y, (float)i), PovRay::Point((float)x, (float)pov.ymax, (float)i), quadri, ctubes);
        }
      }
    }
  }
}
}

