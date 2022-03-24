#pragma once

/*!
* \file  ISterm.h
*
* /

  /*! \namespace etvo
  * namespace for ETVO classes
  */

namespace etvo
{

  /*!
  * \class etvo::ISterm
  *
  * \brief Abstract base class to handle Idempotent Semiring terms
  * 
  * Attribute _epsNTop describes epsilon (-1) Top(+1) and Not extrem (0)
  *
  * \author BC LH JT LARIS
  * \version 2.0
  */

     
  class ISterm
  {
  protected:
    /// _epsNTop = -1 epsilon 0 not extrem (normal) +1 Top
    char _epsNTop; 
  public:
    /// default constructor : an epsilon term 
    ISterm(bool isEpsilon = false); // TRUE=epsilon  FALSE=NoXtreme
    /// constructor to specify the type of ISterm
    ISterm(int epsNTop);
    
     bool isEpsilon() const;
     bool isTop() const;
     bool isExtreme() const;

     void setEpsilon();
     void setTop();

     bool operator==(const ISterm &) const;

  };

}
