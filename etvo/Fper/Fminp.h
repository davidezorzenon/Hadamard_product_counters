#ifndef FMINP_H
#define FMINP_H
#include "Fper.h"

/*!
* \file  Fminp.h
*
*/


/*! \namespace etvo
* namespace for ETVO classes
*/
namespace etvo
{

  /*!
  * \class etvo::Fminp
  * \brief Class for pseudo - periodic functions with oplus=min and otimes=composition
  * \author BC LH JT LARIS
  * \version 2.0
  */

class Fminp:public Fper
{
    public:           
      /*! Class method (called by Fminp::E()) returning the Id function*/
      static Fminp E();
    
      /*! Default constructor : Id function*/
      Fminp();
      /*! Constructor: full definition (see the base class Fper)*/
      Fminp(int dP,int codP,const std::vector<int> & seq);
      /*! Constructor: initialise from Fper function*/
      Fminp(const Fper & f);

      /*! min operation between two functions with the same slope codP/dP */
      Fminp min(const Fminp & f ) const;

      /*! max operation between two functions with the same slope codP/dP */
      Fminp max(const Fminp & f ) const;

      /*! + operator=min*/
      Fminp operator+(const Fminp & f) const;
      /*! * operator = composition*/
      Fminp operator*(const Fminp & f) const;
      /*!  infimum (max) operation between two functions with the same slope */
      Fminp inf(const Fminp & f) const;
      
      /*! \brief residuation of the left product 
      *   Fminp g,f;
      *
      *   ...
      *
      *   g.lfrac(f) = "greatest" (according to the (min,+) order) function h s.t. f.h <= g
      */
      Fminp lfrac(const Fminp & a) const;

      /*! \brief residuation of the right product
      *   Fminp g,f;
      *
      *   ...
      *
      *   g.rfrac(f) = greatest function h s.t. h.f <= g
      */
      Fminp rfrac(const Fminp & a) const;

      bool operator==(const Fminp & f) const;
      bool operator!=(const Fminp & f) const;
      bool operator<=(const Fminp & f) const;
      bool operator>=(const Fminp & f) const;

      bool operator<(const Fminp & f) const;
      bool operator>(const Fminp & f) const;

      /*! returns a string description of the function */
      virtual std::string toString() const;
};
}
#endif // FMINP_H
