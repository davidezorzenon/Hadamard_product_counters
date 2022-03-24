#ifndef FPER_H
#define FPER_H
#include<utility>
#include<vector>
#include<string>
/*!
* \file  Fper.h
*
*/


/*! \namespace etvo
* namespace for ETVO classes
*/
namespace etvo
{

   /*!
    * \class etvo::Fper
    * \brief Base class for pseudo - periodic functions Z->Z where f(x + dP) = codP + f(x)
	* \author BC LH JT LARIS
    * \version 2.0
    */

class Fper
{
    public:       
        /*! 
        * \brief Default constructor : set as Id function Z->Z,x->x
        */
        Fper();  
        /*!
        * \brief Constructor : full definition 
        * \param dP: domain period
        * \param codP: codomain period
        * \param seq : values of f(0),f(1), ... over one period
        */
        Fper(int dP,int codP,const std::vector<int> & seq);

        /*!
        * \brief Set values of f(0),f(1), ... over one period
        * \param seq : values of f(0),f(1), 
        */
        void setSeq(const std::vector<int> & seq);

        /*!
        * \brief Set dP/codP 
        * \param dP: domain period
        * \param codP: codomain period
        */
        void setPeriodicity(int dP,int codP);

        /*!
        * \brief Value of f(x) 
        * \param arg: x
        * \return f(x)
        */
        int getValue(int arg) const;     

        /*!
        * \brief Value of f(x)
        * \param arg: x
        * \return f(x)
        */
        int operator()(int arg) const;


        bool operator==(const Fper & f) const;
        bool operator!=(const Fper & f) const;
        bool operator<=(const Fper & f) const;
        bool operator>=(const Fper & f) const;

        /*! \brief returns the pair (dP,codP)
        */
        std::pair<int,int> getPeriodicity() const;
        
        /*! returns the domain period dP*/
        int getDomPer() const;
        /*! returns the codomain period codP*/
        int getCodomPer() const;
      
        /*! \brief Produces a non-canonical extension of a (dP,codP) pseudo-periodic function
        *   The result is the equivalent (mulxdP,mulxcodP) pseudo-periodc function
        */
        Fper extendBy(unsigned mul) const;

        /*! \brief Computes the composition of *this with f
        * \param f: an Fper object
        * \return an Fper object 
        */
        Fper composeWith(const Fper & f) const;

        /*! \brief Reduces a non-canonical pseudo-periodic function to the canonical form
        * which has the least period (dP,codP)
        */
        void reduce();

		void canon();

        /*! gives the maximum of f(x) projected on y axis [x=0] parallel to (dP,codP) line 
        * This value is important for improving max,min computation between functions
        */
        double getyMax0() const;
        /*! gives the minimum of f(x) projected on y axis [x=0] parallel to (dP,codP) line 
         * This value is important for improving max,min computation between functions*/
        double getyMin0() const;

        /*! \bried Returns a string description of a pseudo-periodic function
        * Ex: "[-7 -7 -3 -3 ](4,5)" for a (4,5) pseudo-periodic function f(0)=-7,f(1)=-7,f(2)=-3 ...
        */
        virtual std::string toString() const;
                
        /*!  \brief Class method (called by Fper::setAutoReductionState(b)) to set the autoreduction state (ON/OFF)*/
       static void setAutoReduction(bool on);
       /*! \brief Class method (called by Fper::getAutoReductionState()) to obtain the autoreduction state (ON/OFF)*/
       static bool getAutoReductionState();

    protected:
        bool reduceBy(unsigned div);
        /// class variable to set ON/OFF the autoreduction
        static bool _autoreduction;

        void updateYMinMax();
        bool isNodecreasing(const std::vector<int> & v);

        /// domain period 
        int _domP;  
        /// codomain period
        int _codomP;  
        /// periodic sequence
        std::vector<int> _seq;   

        double _yMax0;
        double _yMin0;      
};

/*! \brief operator to print Fper elements into the standard ostream
*
*/
    std::ostream & operator<<(std::ostream & f,const Fper & );
}
#endif // FPER_H
