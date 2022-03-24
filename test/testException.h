#ifndef TESTEXCEPTION_H
#define TESTEXCEPTION_H
#include <string>
#include<exception>

namespace test
{

class testException: virtual public std::exception
{
private:
    unsigned _num;
    std::string _msg;
public:
    explicit testException(unsigned num,const std::string & msg);
    unsigned Num() const;
    std::string Message() const;

	virtual const char* what() const throw () {
		return _msg.c_str();
	}

	virtual ~testException() throw () {}
};
}

#endif // ETVOEXCEPTION_H
