#include "etvoException.h"
#include<sstream>
using namespace std;

namespace etvo
{

etvoException::etvoException(unsigned num,const std::string & msg):exception(),_msg(msg)
{
         _num=num;
}

unsigned etvoException::Num() const
{
         return _num;
}

std::string etvoException::Message() const
{
  return _msg;
}
/*
const char* etvoException::what() const noexcept
{
    stringstream ss;
    ss << "#" << _num << " msg:" << _msg <<"\0";
    return ss.str().c_str();
}*/



}
