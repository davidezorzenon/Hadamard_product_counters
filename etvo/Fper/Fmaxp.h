#ifndef FMAXP_H
#define FMAXP_H
#include "Fper.h"

/*!
* \file  Fmaxp.h
*
*/

/*! \namespace etvo
* namespace for ETVO classes
*/
namespace etvo
{
  /*!
  * \class etvo::Fmaxp
  * \brief Class for pseudo - periodic functions with oplus=max and otimes=composition
  * \author BC LH JT LARIS
  * \version 2.0
  */

class Fmaxp:public Fper
{
    public:  
      /*! Class method (called by Fminp::E()) returning the Id function*/
      static Fmaxp E();      
      /*! Default constructor : Id function*/
      Fmaxp();
      /*! Constructor: full definition (see the base class Fper)*/
      Fmaxp(int dP,int codP,const std::vector<int> & seq);
      /*! Constructor: initialise from Fper function*/
      Fmaxp(const Fper &);
      /*! min operation between two functions with the same slope codP/dP */
      Fmaxp min(const Fmaxp & ) const;
      /*! max operation between two functions with the same slope codP/dP */
      Fmaxp max(const Fmaxp & ) const;
      /*! + operator=max*/
      Fmaxp operator+(const Fmaxp & f) const;
      /*! * operator=composition*/
      Fmaxp operator*(const Fmaxp & f) const;
      /*!  infimum (min) operation between two functions with the same slope */
      Fmaxp inf(const Fmaxp & f) const;

      bool operator==(const Fmaxp & ) const;
      bool operator!=(const Fmaxp &) const;
      bool operator<=(const Fmaxp & ) const;
      bool operator>=(const Fmaxp & ) const;
      bool operator<(const Fmaxp &) const;
      bool operator>(const Fmaxp &) const;
      /*! \brief residuation of the left product
      *   Fmaxp g,f;
      *
      *   ...
      *
      *   g.lfrac(f) = "greatest" (according to the (max,+) order) function h s.t. f.h <= g
      */
      Fmaxp lfrac(const Fmaxp & a) const;
      /*! \brief residuation of the right product
      *   Fmaxp g,f;
      *   ...
      *   g.rfrac(f) = greatest function h s.t. h.f <= g
      */
      Fmaxp rfrac(const Fmaxp & a) const;

      /*! returns a string description of the function */
      virtual std::string toString() const;
};
}
#endif // FMAXP_H
