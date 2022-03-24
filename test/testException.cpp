#include "testException.h"
#include<sstream>
using namespace std;


namespace test
{

testException::testException(unsigned num,const std::string & msg):exception(),_msg(msg)
{
         _num=num;
}

unsigned testException::Num() const
{
         return _num;
}


std::string testException::Message() const
{
  return _msg;
}


}
