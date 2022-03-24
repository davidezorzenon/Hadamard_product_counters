#include "parser.h"
#define BOOST_SPIRIT_NO_PREDEFINED_TERMINALS
#include <boost/config/warning_disable.hpp>
#include <boost/spirit/include/qi.hpp>
#include <boost/spirit/include/qi_int.hpp>
#include <iostream>
#include <string>
#include <stack>
#include "../etvo/common/etvoException.h"

using namespace std;
using namespace etvo;

namespace parseseriestg
{
  std::stack<etvo::seriesTg> pSTgStack;
  std::vector<int> vect_Int;

  namespace qi = boost::spirit::qi;
  namespace ascii = boost::spirit::ascii;

  ///////////////////////////////////////////////////////////////////////////////
  //  Semantic actions
  ////////////////////////////////////////////////////////1///////////////////////
  
  void do_print() {   
  }
  
  void do_pushGamma(int n) {
	  pSTgStack.push(Tg::g(n));
  }
  void do_pushDelta(int t) {  pSTgStack.push(Tg::d(t));  }

  void do_pushBigDeltaTg(int T){ 	 pSTgStack.push(Tg::D(T));   }

  void do_pushDeltaVarTg()
  {
	  T_op deltav = T_op::deltaVar(vect_Int);
	  vect_Int.clear();
	  seriesTg p(Tg(deltav, 0));
	  pSTgStack.push(p);
  } 

  void do_kleene()
  {
	  seriesTg last = pSTgStack.top();
	  pSTgStack.pop();
	  last = last.star();
	  pSTgStack.push(last);
  }

  void do_pushInt(int w)
  {
	  vect_Int.push_back(w);
  }

  void do_otimes() {
    seriesTg last = pSTgStack.top();
	pSTgStack.pop();
    seriesTg first = pSTgStack.top();
	pSTgStack.pop();
    seriesTg res = first * last;
	pSTgStack.push(res);
  }

  void do_oplus() {
	  seriesTg last = pSTgStack.top();
	  pSTgStack.pop();
	  seriesTg first = pSTgStack.top();
	  pSTgStack.pop();
	  seriesTg res = first + last;
	  pSTgStack.push(res);
  }

  

  ///////////////////////////////////////////////////////////////////////////////
  //  Our calculator grammar
  ///////////////////////////////////////////////////////////////////////////////
  template <typename Iterator>
  struct calculator : qi::grammar<Iterator, ascii::space_type>
  {
    calculator() : calculator::base_type(statement)
    {
      qi::int_type int_;
	  qi::uint_type uint_;

      statement = (expression[&do_print]);
      factor = poly | group| kleene;
      kleene = ('[' >>expression >> "]*")[&do_kleene];
      group = '(' >> expression >> ')';
      term = factor >> *('.' >> factor[&do_otimes]);
      expression = term >> *('+' >> term[&do_oplus]);
      poly = gamma | delta | DeltaTg| deltaVarTg;
      gamma = 'g' >> int_[&do_pushGamma];
      delta = 'd' >> int_[&do_pushDelta];
	  DeltaTg = 'D' >> int_[&do_pushBigDeltaTg];
	  seqTg = '<' >> int_[&do_pushInt] >> *(',' >> int_[&do_pushInt]) >> '>';
	  deltaVarTg = ('d' >> seqTg)[&do_pushDeltaVarTg];
	 
    }

    qi::rule<Iterator, ascii::space_type> statement, expression,
      factor, group, term, poly, gamma, delta,DeltaTg,deltaVarTg,kleene,seqTg;
  };
}

namespace etvo
{
  seriesTg parser::parseSeriesTg(const std::string & str)
  {
    typedef std::string::const_iterator iterator_type;
    typedef parseseriestg::calculator<iterator_type> calculator;

    boost::spirit::ascii::space_type space; // Our skipper
    calculator calc; // Our grammar

    std::string::const_iterator iter = str.begin();
    std::string::const_iterator end = str.end();
    bool r = phrase_parse(iter, end, calc, space);

    if (r && iter == end)
    {
      seriesTg result = parseseriestg::pSTgStack.top();
      parseseriestg::pSTgStack.pop();
      return result;
    }
    else
    {
      throw etvoException(14, "parser failed");
    }
  }
}