#include "Tg.h"
#include "polyTg.h"

#include "../common/EtvoTools.h"
#include<sstream>
using namespace graphicPR;

namespace etvo
{
std::ostream & operator<<(std::ostream & st,const Tg & m)
{
    st<<m.toString();
    return st;
}

Tg Tg::E() { return Tg(); }

Tg Tg::g(int n){	return Tg(T_op::E(),n); }

Tg Tg::D(unsigned mb){	return Tg(T_op(dDd(0,mb,0)),0); }

Tg Tg::d(int t){	return Tg(T_op(dDd(t,1,0)),0); }


Tg::Tg():_w(T_op::E()),_g(0){ }


Tg::Tg(int t, int n):_g(n),_w(T_op::delta(t)){}

Tg::Tg(int t, unsigned D, int tp, int n) : _g(n), _w(dDd(t, D, tp)) {}

Tg::Tg(const T_op & w,int g):_g(g),_w(w){}


T_op Tg::getT_op() const
{
    return _w;
}
void Tg::setT_op(const T_op & w)
{
    _w=w;
}

int Tg::getG() const
{
return _g;
}

void Tg::setG(int g)
{
    _g=g;
}

void Tg::getGain(unsigned int & mb) const
{
  mb = _w.getMB();
}

std::string Tg::toString() const
{
    std::stringstream ss;
    if(_w.getTerms().size()>1)
      ss << "(" << _w.toString() << ").g" << _g;
    else
      ss << _w.toString() << ".g" << _g;
   
    return ss.str();
}

std::string Tg::toStringAsDeltaVar() const
{
  std::stringstream ss;
  ss << _w.toStringAsDeltaVar() << ".g" << _g;
  return ss.str();
}

Tg Tg::operator*(const Tg & m) const
{
    return Tg(_w*m._w,_g+m._g);
}

Tg Tg::otimes(const Tg & m) const
{
  return (*this)*m;
}

polyTg Tg::operator*(const polyTg & p) const
{
  return polyTg::otimes(*this,p);
}

polyTg Tg::otimes(const polyTg & p) const
{
  return (*this)*p;
}

polyTg Tg::operator+(const Tg & m) const
{
  return oplus(m);
}

polyTg Tg::oplus(const Tg & m) const
{
  return polyTg(*this) + m;
}

polyTg Tg::operator+(const polyTg & p) const
{
  return oplus(p);
}

polyTg Tg::oplus(const polyTg & p) const
{
  return polyTg(*this) + p;
}

void Tg::canon()
{
    _w.reduce();
}

Tg Tg::inf(const Tg & m)const
{
    return Tg(_w.inf(m._w),Tools::Max(_g,m._g));
}

Tg Tg::lfrac(const Tg & m) const
{
    return Tg(_w.lfrac(m._w),_g-m._g);
}
Tg Tg::rfrac(const Tg & m) const
{
    return Tg(_w.rfrac(m._w),_g-m._g);
}

bool Tg::operator==(const Tg & m)const
{
    return ((_g==m._g) &&(_w==m._w));
}

bool Tg::operator!=(const Tg & m)const
{
  return !((*this)==m);
}

bool Tg::operator>=(const Tg & m) const
{
     return ((_g<=m._g) &&(_w>=m._w));
}
bool Tg::operator<=(const Tg & m) const
{
     return ((_g>=m._g) &&(_w<=m._w));
}

void Tg::toPov(graphicPR::PovRay & pov, graphicPR::PovRay::Color c, Tg * prec, Tg* next)
{
	// to improve by using prec and next
	//  float quadriEpais = 0.1F;
	//  float rtube = 0.15F;
	// int yprofond;
	float rsphere = 0.18F;
	float quadriFin = 0.02F;

	float quadri = quadriFin;
	int x, z, znext;
	
	PovRay::Color csurf(0.3F, 0.3F, 0.3F);
	PovRay::Color ctubes(0, 0, 0);
	int zprec = pov.zmin;
	
	for (x = pov.xmin; x <= pov.xmax; x++)
	{
		z = this->_w.Rw(x);

		if (z < pov.zmax)
		{
			pov.Sphere(PovRay::Point((float)x, (float)this->_g, (float)z), rsphere, c);

			if (x == pov.xmin || z != _w.Rw(x - 1))
			{
				pov.FaceXY(PovRay::Point((float)x, (float)this->_g, (float)z),
					PovRay::Point((float)(pov.xmax), (float)this->_g, (float)(pov.zmin)));
				pov.FaceXY(PovRay::Point((float)x, (float)this->_g, (float)z),
					PovRay::Point((float)x, (float)pov.ymax, 0));
				pov.FaceZ(PovRay::Point((float)x, (float)this->_g, (float)z),
					PovRay::Point((float)pov.xmax, (float)pov.ymax, (float)z));

				int xtemp = x;
				do
				{
					pov.Cylinder(PovRay::Point((float)xtemp, (float)this->_g, (float)z), PovRay::Point((float)(xtemp), (float)this->_g, (float)pov.zmin), quadri, ctubes);
					xtemp++;
				} while (_w.Rw(xtemp) == z && xtemp<=pov.xmax);

				for (int zc = z; zc >= zprec; zc--)
				{
					pov.Cylinder(PovRay::Point((float)x, (float)this->_g, (float)zc), PovRay::Point((float)pov.xmax, (float)this->_g, (float)zc), quadri, ctubes);
				}

				for (int zc = z; zc >= zprec; zc--)
				{
					pov.Cylinder(PovRay::Point((float)x, (float)this->_g, (float)zc), PovRay::Point((float)x, (float)pov.ymax, (float)zc), quadri, ctubes);
				}
				
				for (int y = this->_g; y<= pov.ymax;y++)
				{
					pov.Cylinder(PovRay::Point((float)x, (float)y, (float)z), PovRay::Point((float)x, (float)y, (float)pov.zmin), quadri, ctubes);
				}

				zprec = z;


			}
			/*
			if (x != pov.xmin) {
				pov.Cylindre(PovRay::Point((float)x, (float)y, (float)_d), PovRay::Point((float)(x - 1), (float)y, (float)_d), quadri, ctubes);
			}
			pov.Cylindre(PovRay::Point((float)x, (float)y, (float)_d), PovRay::Point((float)x, (float)y, (float)pov.zmin), quadri, ctubes);
			pov.Cylindre(PovRay::Point((float)x, (float)y, (float)_d), PovRay::Point((float)x, (float)pov.ymax, (float)_d), quadri, ctubes);
			if (y != ynext)
			{
				for (int i = y + 1; i <= ynext; i++)
				{
					pov.Cylindre(PovRay::Point((float)x, (float)i, (float)_d), PovRay::Point((float)pov.xmin, (float)i, (float)_d), quadri, ctubes);
					pov.Cylindre(PovRay::Point((float)x, (float)i, (float)_d), PovRay::Point((float)x, (float)i, (float)pov.zmin), quadri, ctubes);
					pov.FaceXY(PovRay::Point((float)x, (float)i, (float)_d), PovRay::Point((float)x, (float)(i - 1), (float)pov.zmin));
				}

				quadri = quadriFin;
				for (int i = this->_d - 1; i > pov.zmin; i--)
				{
					pov.Cylindre(PovRay::Point((float)x, (float)y, (float)i), PovRay::Point((float)pov.xmin, (float)y, (float)i), quadri, ctubes);
					pov.Cylindre(PovRay::Point((float)x, (float)y, (float)i), PovRay::Point((float)x, (float)pov.ymax, (float)i), quadri, ctubes);
				}
			}
			*/
		}
	}
}

} ///namespace etvo

