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

namespace parseseriesed
{
  std::stack<etvo::seriesEd> pSEdStack;
  std::vector<unsigned> vect_Uint;

  namespace qi = boost::spirit::qi;
  namespace ascii = boost::spirit::ascii;

  ///////////////////////////////////////////////////////////////////////////////
  //  Semantic actions
  ////////////////////////////////////////////////////////1///////////////////////
  
  void do_print() {
    /*if(pEdStack.size()!=0)
    {
    polyEd last=pEdStack.top();
    pEdStack.top();
    cout << last<<endl;
    }*/
  }
  void do_kleene() 
  {
    seriesEd last = pSEdStack.top();
    pSEdStack.pop();
    last = last.star();
    pSEdStack.push(last);
  }

  void do_pushGamma(int n) {
    seriesEd p(Ed(gNg(n), 0));
    pSEdStack.push(p);
  }
  void do_pushDelta(int t) {
    seriesEd p(Ed(E_op::E(), t));
    pSEdStack.push(p);
  }
  void do_pushMu(int m) {
    seriesEd p(Ed(gNg(0, m, 1, 0), 0));
    pSEdStack.push(p);
  }
  void do_pushBeta(int b) {
    seriesEd p(Ed(gNg(0, 1, b, 0), 0));
    pSEdStack.push(p);
  }
  void do_pushNabla(int n) {
    seriesEd p(Ed(gNg(0, n, n, 0), 0));
    pSEdStack.push(p);
  }

  void do_pushUint(unsigned w)
  {
	  vect_Uint.push_back(w);
  }

  void do_pushMuVarEd()
  {
	  E_op muv = E_op::MuVar(vect_Uint);
	  vect_Uint.clear();
	  seriesEd p(Ed(muv, 0));
	  pSEdStack.push(p);
  }
  void do_pushBetaVarEd()
  {
	  E_op betav = E_op::BetaVar(vect_Uint);
	  vect_Uint.clear();
	  seriesEd p(Ed(betav, 0));
	  pSEdStack.push(p);
  }
  void do_otimes() {
    seriesEd last = pSEdStack.top();
    pSEdStack.pop();
    seriesEd first = pSEdStack.top();
    pSEdStack.pop();
    seriesEd res = first * last;
    pSEdStack.push(res);
  }

  void do_oplus() {
    seriesEd last = pSEdStack.top();
    pSEdStack.pop();
    seriesEd first = pSEdStack.top();
    pSEdStack.pop();
    seriesEd res = first + last;
    pSEdStack.push(res);
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
      poly = gamma | delta | beta | mu | nabla| muVarEd | betaVarEd;
      gamma = 'g' >> int_[&do_pushGamma];
      delta = 'd' >> int_[&do_pushDelta];
      mu = 'm' >> int_[&do_pushMu];
      beta = 'b' >> int_[&do_pushBeta];
      nabla = 'N' >> int_[&do_pushNabla];

	  seqEd = '<' >> uint_[&do_pushUint] >> *(',' >> uint_[&do_pushUint]) >> '>';
	  muVarEd = ('m' >> seqEd)[&do_pushMuVarEd];
	  betaVarEd = ('b' >> seqEd)[&do_pushBetaVarEd];
    }

    qi::rule<Iterator, ascii::space_type> statement, expression,
      factor, group, term, poly, nabla, gamma, delta, mu, beta,kleene,seqEd,muVarEd,betaVarEd;
  };
}

namespace etvo
{
  seriesEd parser::parseSeriesEd(const std::string & str)
  {
    typedef std::string::const_iterator iterator_type;
    typedef parseseriesed::calculator<iterator_type> calculator;

    boost::spirit::ascii::space_type space; // Our skipper
    calculator calc; // Our grammar

    std::string::const_iterator iter = str.begin();
    std::string::const_iterator end = str.end();
    bool r = phrase_parse(iter, end, calc, space);

    if (r && iter == end)
    {
      seriesEd result = parseseriesed::pSEdStack.top();
      parseseriesed::pSEdStack.pop();
      return result;
    }
    else
    {
      throw etvoException(14, "parser failed");
    }
  }
}