#include "parser.h"
//#define BOOST_SPIRIT_NO_PREDEFINED_TERMINALS

#include <boost/config/warning_disable.hpp>
#include <boost/spirit/include/qi.hpp>
#include <boost/spirit/include/qi_int.hpp>
#include <iostream>
#include <string>
#include <stack>
#include "../etvo/common/etvoException.h"

using namespace std;
using namespace etvo;

namespace parseped
{
    std::stack<etvo::polyEd> pEdStack;
	std::vector<unsigned> vect_Uint;

    namespace qi = boost::spirit::qi;
    namespace ascii = boost::spirit::ascii;

    ///////////////////////////////////////////////////////////////////////////////
    //  Semantic actions
    ////////////////////////////////////////////////////////1///////////////////////
        void do_print(){
        /*if(pEdStack.size()!=0)
		{
		 polyEd last=pEdStack.top();
		 pEdStack.top();
		 cout << last<<endl;
		}*/
		}
        void do_pushGamma(int n){
            polyEd p(Ed(gNg(n),0));
            pEdStack.push(p);
           }
        void do_pushDelta(int t)  {
             polyEd p(Ed(E_op::E(),t));
            pEdStack.push(p);
        }
        void do_pushMu(int m){
            polyEd p(Ed(gNg(0,m,1,0),0));
            pEdStack.push(p);
        }
        void do_pushBeta(int b){
            polyEd p(Ed(gNg(0,1,b,0),0));
            pEdStack.push(p);
        }
        void do_pushNabla(int n){
            polyEd p(Ed(gNg(0,n,n,0),0));
            pEdStack.push(p);
        }

		void do_pushUint(unsigned w)
		{
			vect_Uint.push_back(w);
		}

		void do_pushMuVarEd()
		{
			E_op muv = E_op::MuVar(vect_Uint);
			vect_Uint.clear();
			polyEd p(Ed(muv, 0));
			pEdStack.push(p);
		}
		void do_pushBetaVarEd()
		{
			E_op betav = E_op::BetaVar(vect_Uint);
			vect_Uint.clear();
			polyEd p(Ed(betav, 0));
			pEdStack.push(p);
		}

        void do_otimes(){
        polyEd last=pEdStack.top();
		pEdStack.pop();
		polyEd first=pEdStack.top();
		pEdStack.pop();
		polyEd res=first*last;
		pEdStack.push(res);
        }

        void do_oplus(){
        polyEd last=pEdStack.top();
		pEdStack.pop();
		polyEd first=pEdStack.top();
		pEdStack.pop();
		polyEd res=first+last;
		pEdStack.push(res);
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

            statement=  (expression[&do_print]);
            factor = poly | group ;
            group= '('>> expression>> ')';
            term  = factor >> *( '.' >> factor[&do_otimes]);
            expression = term >> *( '+' >> term[&do_oplus]);
            poly = gamma|delta|beta|mu|nabla| muVarEd|betaVarEd;
            gamma = 'g'>>int_[&do_pushGamma];
            delta = 'd'>>int_[&do_pushDelta];
            mu = 'm'>>int_[&do_pushMu];
            beta = 'b'>>int_[&do_pushBeta];
            nabla= 'N'>>int_[&do_pushNabla];

			seqEd = '<' >> uint_[&do_pushUint] >> *(',' >> uint_[&do_pushUint]) >> '>';
			muVarEd = ('m' >> seqEd)[&do_pushMuVarEd];
			betaVarEd = ('b' >> seqEd)[&do_pushBetaVarEd];
        }

        qi::rule<Iterator, ascii::space_type> statement,expression,
                                            factor,group,term,poly,nabla,gamma,delta,mu,beta,seqEd,muVarEd,betaVarEd;
    };
}



namespace parseptg
{
    std::stack<etvo::polyTg> pTgStack;

    namespace qi = boost::spirit::qi;
    namespace ascii = boost::spirit::ascii;

    ///////////////////////////////////////////////////////////////////////////////
    //  Semantic actions
    ////////////////////////////////////////////////////////1///////////////////////
        void do_print(){

		}
        void do_pushGamma(int n){
            polyTg p(Tg(dDd(0),n));
            pTgStack.push(p);
           }
        void do_pushDelta(int t)  {
             polyTg p(Tg(dDd(t),0));
            pTgStack.push(p);
        }
        void do_pushDELTA(unsigned D){
            polyTg p(Tg(dDd(0,D,0),0));
            pTgStack.push(p);
        }


        void do_otimes(){
        polyTg last=pTgStack.top();
		pTgStack.pop();
		polyTg first=pTgStack.top();
		pTgStack.pop();
		polyTg res=first*last;
		pTgStack.push(res);
        }

        void do_oplus(){
        polyTg last=pTgStack.top();
		pTgStack.pop();
		polyTg first=pTgStack.top();
		pTgStack.pop();
		polyTg res=first+last;
		pTgStack.push(res);
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

            statement=  (expression[&do_print]);
            factor = poly | group ;
            group= '('>> expression>> ')';
            term  = factor >> *( '.' >> factor[&do_otimes]);
            expression = term >> *( '+' >> term[&do_oplus]);
            poly = gamma|delta|DELTA;
            gamma = 'g'>>int_[&do_pushGamma];
            delta = 'd'>>int_[&do_pushDelta];
            DELTA = 'D'>>int_[&do_pushDELTA];
        }

        qi::rule<Iterator, ascii::space_type> statement,expression,
                                            factor,group,term,poly,DELTA,gamma,delta;
    };
}


namespace parsepolyIII
{
  std::stack<etvo::poly> polyStack;

  namespace qi = boost::spirit::qi;
  namespace ascii = boost::spirit::ascii;

  ///////////////////////////////////////////////////////////////////////////////
  //  Semantic actions
  ////////////////////////////////////////////////////////1///////////////////////
  void do_print() {

  }
  void do_pushGamma(int n) {
    etvo::poly p(etvo::gd(n,0));
    polyStack.push(p);
  }
  void do_pushDelta(int t) {
    etvo::poly p(etvo::gd(0,t));
    polyStack.push(p);
  }
  

  void do_otimes() {
    etvo::poly last = polyStack.top();
    polyStack.pop();
    etvo::poly first = polyStack.top();
    polyStack.pop();
    etvo::poly res = first * last;
    polyStack.push(res);
  }

  void do_oplus() {
    etvo::poly last = polyStack.top();
    polyStack.pop();
    etvo::poly first = polyStack.top();
    polyStack.pop();
    etvo::poly res = first + last;
    polyStack.push(res);
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

      statement = (expression[&do_print]);
      factor = poly | group;
      group = '(' >> expression >> ')';
      term = factor >> *('.' >> factor[&do_otimes]);
      expression = term >> *('+' >> term[&do_oplus]);
      poly = gamma | delta;
      gamma = 'g' >> int_[&do_pushGamma];
      delta = 'd' >> int_[&do_pushDelta];      
    }

    qi::rule<Iterator, ascii::space_type> statement, expression,
      factor, group, term, poly, gamma, delta;
  };
}






namespace etvo
{

polyEd parser::parsePolyEd(const std::string & str)
{
    typedef std::string::const_iterator iterator_type;
    typedef parseped::calculator<iterator_type> calculator;

    boost::spirit::ascii::space_type space; // Our skipper
    calculator calc; // Our grammar

    std::string::const_iterator iter = str.begin();
    std::string::const_iterator end = str.end();
    bool r = phrase_parse(iter, end, calc, space);

        if (r && iter == end)
        {
        polyEd result = parseped::pEdStack.top();
        parseped::pEdStack.pop();
        return result;
        }
        else
        {
            throw etvoException(14,"parser failed");
        }
}

polyTg parser::parsePolyTg(const std::string & str)
{
    typedef std::string::const_iterator iterator_type;
    typedef parseptg::calculator<iterator_type> calculator;

    boost::spirit::ascii::space_type space; // Our skipper
    calculator calc; // Our grammar

    std::string::const_iterator iter = str.begin();
    std::string::const_iterator end = str.end();
    bool r = phrase_parse(iter, end, calc, space);

        if (r && iter == end)
        {
        polyTg result = parseptg::pTgStack.top();
        parseptg::pTgStack.pop();
        return result;
        }
        else
        {
            throw etvoException(14,"parser failed");
        }
}


etvo::poly parser::parsePoly(const std::string & str)
{
  typedef std::string::const_iterator iterator_type;
  typedef parsepolyIII::calculator<iterator_type> calculator;

  boost::spirit::ascii::space_type space; // Our skipper
  calculator calc; // Our grammar

  std::string::const_iterator iter = str.begin();
  std::string::const_iterator end = str.end();
  bool r = phrase_parse(iter, end, calc, space);

  if (r && iter == end)
  {
    etvo::poly result = parsepolyIII::polyStack.top();
    parsepolyIII::polyStack.pop();
    return result;
  }
  else
  {
    throw etvoException(14, "parser failed");
  }
}





}


