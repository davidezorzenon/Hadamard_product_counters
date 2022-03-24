#ifndef ETVOEXCEPTION_H
#define ETVOEXCEPTION_H
#include <string>
#include<exception>

/*!
* \file  etvoException.h
*
*/

/*! \namespace etvo
* namespace for ETVO classes
*/
namespace etvo
{
	/*!
	* \class etvo::etvoException
	* \brief Class to describe exceptions in etvo
	*
	*
	* \author BC LH JT LARIS
	* \version 2.0
	*/

class etvoException: virtual public std::exception
{
private:
    unsigned _num;
    std::string _msg;
public:
	explicit etvoException(unsigned num,const std::string & msg);
    unsigned Num() const;
    std::string Message() const;

	virtual const char* what() const throw () {
		return _msg.c_str();
	}

	virtual ~etvoException() throw () {}

};
}

#endif // ETVOEXCEPTION_H
