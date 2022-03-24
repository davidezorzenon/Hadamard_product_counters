#include "parser.h"
#define BOOST_SPIRIT_NO_PREDEFINED_TERMINALS

#include <boost/config/warning_disable.hpp>
#include <boost/spirit/include/qi.hpp>
#include <boost/spirit/include/qi_int.hpp>
#include <boost/spirit/include/qi_char_class.hpp>
#include <iostream>
#include <string>
#include <stack>
#include<map>
#include "../etvo/common/etvoException.h"

using namespace std;
using namespace etvo;

typedef std::map<std::string, etvo::seriesEd> symtab_sed;
typedef std::map<std::string, etvo::seriesTg> symtab_stg;
typedef std::map < std::string, etvo::series> symtab_smm;


namespace calculatorEtvo
{
  symtab_sed vars_Ed;  // vars in E[d]
  symtab_stg vars_Tg;  // vars in T[g]
  symtab_smm vars_MM;  // vars in MinMaxGD

  std::stack<etvo::seriesEd> stack_Ed;
  std::stack<etvo::seriesTg> stack_Tg;
  std::stack<etvo::series> stack_MM;

  std::stack<std::string> stack_identEd;
  std::stack<std::string> stack_identTg;
  std::stack<std::string> stack_identMM;

  std::vector<unsigned> vect_Uint;
  std::vector<int> vect_Int;

  std::string strIdent;

  namespace qi = boost::spirit::qi;
  namespace ascii = boost::spirit::ascii;

  void do_pushC(char c)
  {
	  strIdent += c;
  }


  void do_pushGammaEd(int n) {    seriesEd p(Ed(gNg(n), 0));    stack_Ed.push(p);  }

  void do_pushDeltaEd(int t) {    seriesEd p(Ed(E_op::E(), t));    stack_Ed.push(p);  }

  void do_pushMuEd(int m) {    seriesEd p(Ed(gNg(0, m, 1, 0), 0));    stack_Ed.push(p);  }

  void do_pushBetaEd(int b) {    seriesEd p(Ed(gNg(0, 1, b, 0), 0));    stack_Ed.push(p);  }

  void do_pushNablaEd(int n) {    seriesEd p(Ed(gNg(0, n, n, 0), 0));    stack_Ed.push(p);  }

  void do_pushEpsEd() { stack_Ed.push(seriesEd::Epsilon()); }

  void do_pushUint(unsigned w)
  {
    vect_Uint.push_back(w);
  }

  void do_pushMuVarEd() 
  {
    E_op muv=E_op::MuVar(vect_Uint);    
    vect_Uint.clear();
    seriesEd p(Ed(muv, 0));
    stack_Ed.push(p); 
  }
  void do_pushBetaVarEd()
  {
    E_op betav = E_op::BetaVar(vect_Uint);
    vect_Uint.clear();
    seriesEd p(Ed(betav, 0));
    stack_Ed.push(p);
  }

  void do_otimesEd() {
    seriesEd last = stack_Ed.top();
    stack_Ed.pop();
    seriesEd first = stack_Ed.top();
    stack_Ed.pop();
    seriesEd res = first * last;
    stack_Ed.push(res);
  }

  void do_oplusEd() {
    seriesEd last = stack_Ed.top();
    stack_Ed.pop();
    seriesEd first = stack_Ed.top();
    stack_Ed.pop();
    seriesEd res = first + last;
    stack_Ed.push(res);
  }
  
  void do_kleeneEd()
  {
    seriesEd last = stack_Ed.top();
    stack_Ed.pop();
    last = last.star();
    stack_Ed.push(last);
  }

  void do_infEd() {
    seriesEd last = stack_Ed.top();
    stack_Ed.pop();
    seriesEd first = stack_Ed.top();
    stack_Ed.pop();
    seriesEd res = first.infCD(last);
    stack_Ed.push(res);
  }

  void do_lfracEd() {
    seriesEd last = stack_Ed.top();
    stack_Ed.pop();
    seriesEd first = stack_Ed.top();
    stack_Ed.pop();
    seriesEd res = first.lfracCD(last);
    stack_Ed.push(res);
  }

  void do_rfracEd() {
    seriesEd last = stack_Ed.top();
    stack_Ed.pop();
    seriesEd first = stack_Ed.top();
    stack_Ed.pop();
    seriesEd res = first.rfracCD(last);
    stack_Ed.push(res);
  }

  void do_prcausEd() {
    seriesEd last = stack_Ed.top();
    stack_Ed.pop();
    seriesEd res = seriesEd::toCausal(last);
    stack_Ed.push(res);
  }
  
  void do_rightEd() {
    seriesEd last = stack_Ed.top();
    stack_Ed.pop();
    last.toRight();
    stack_Ed.push(last);
  }

  void do_leftEd() {
    seriesEd last = stack_Ed.top();
    stack_Ed.pop();
    last.toLeft();
    stack_Ed.push(last);
  }

  void do_MMToEd() {
    series last = stack_MM.top();
    stack_MM.pop();
    seriesEd res = seriesEd::toSeriesEd(last);
    stack_Ed.push(res);
  }

  void do_assignEd()
  {
    string ident = stack_identEd.top();
    stack_identEd.pop();
    seriesEd last = stack_Ed.top();
    vars_Ed[ident] = last;
    stack_Ed.pop();
    //last.toLeft();;
    cout << last << endl;
  }
  void do_pushIdentEd()
  {
    //std::cout << "pushEd" << endl;
    //std::cout << "se_"+strIdentEd << endl;
    stack_identEd.push("e_" + strIdent);
    strIdent.clear();
  }
  
  void do_printEd() 
  {
    if (stack_Ed.size() > 0)
    {
      std::cout << stack_Ed.top() << endl;
      stack_Ed.pop();
    }
  }

  void do_pushVarEd()
  {
    string strEd= "e_" + strIdent;
    strIdent.clear();
    //cout << strEd << endl;
     
     symtab_sed::iterator it= vars_Ed.find(strEd);
     if (it == vars_Ed.end())
     {
       string str = "undefined name " + strEd;
       cerr << str << endl;
       stack_Ed.push(seriesEd::Epsilon());
     }
     else
     {
       stack_Ed.push(vars_Ed[strEd]);
     }
  }
  void do_printEdAsMuVar()
  {
    seriesEd last = stack_Ed.top();
    stack_Ed.pop();
    cout << last.toStringAsMuVar() << endl;
  }
  void do_printAsCoreEd()
  {
    seriesEd last = stack_Ed.top();
    stack_Ed.pop();
    matrix<series> core = last.getCore();
    unsigned m = core.GetRow();
    unsigned b = core.GetColumn();
    cout << "M=[m" << m << ",g1.m" << m << ",...,g" << (m-1)<<".m"<<m<<"] and ";
    cout << "B=[b" << b << ".g" << (b - 1) << "," << "...,b" << b << "]'" << endl;
    cout << core << endl;
  }

  void do_printVarEd()
  {
    string strEd = "e_" + strIdent;
    strIdent.clear();    

    symtab_sed::iterator it = vars_Ed.find(strEd);
    if (it == vars_Ed.end())
    {
      string str = "undefined name " + strEd;
      cerr << str << endl;      
    }
    else
    {
      cout << vars_Ed[strEd] << endl;;
    }
  }

  void do_equalEd()
  {
    seriesEd last = stack_Ed.top();
    stack_Ed.pop();
    seriesEd first = stack_Ed.top();
    stack_Ed.pop();
    if (first == last) cout << "true";
    else cout << "false";
  }
  
  //------------------------------------------------------------------------------------
  
  void do_pushEpsMM() { stack_MM.push(series::Epsilon()); }

  void do_pushGammaMM(int n) { stack_MM.push(gd(n,0)); }

  void do_pushDeltaMM(int t) { stack_MM.push(gd(0,t)); }

  void do_otimesMM() {
    series last = stack_MM.top();
    stack_MM.pop();
    series first = stack_MM.top();
    stack_MM.pop();
    series res = first * last;
    stack_MM.push(res);
  }

  void do_oplusMM() {
    series last = stack_MM.top();
    stack_MM.pop();
    series first = stack_MM.top();
    stack_MM.pop();
    series res = first + last;
    stack_MM.push(res);
  }

  void do_infMM() {
    series last = stack_MM.top();
    stack_MM.pop();
    series first = stack_MM.top();
    stack_MM.pop();
    series res = first.inf(last);
    stack_MM.push(res);
  }

  void do_fracMM() {
    series last = stack_MM.top();
    stack_MM.pop();
    series first = stack_MM.top();
    stack_MM.pop();
    series res = first.frac(last);
    stack_MM.push(res);
  }

  void do_prcausMM() {
    series last = stack_MM.top();
    stack_MM.pop();
    series res = last.prcaus();
    stack_MM.push(res);
  }

  void do_EdToMM() {
    seriesEd last = stack_Ed.top();
    stack_Ed.pop();
    series res = last.toSeries();
    stack_MM.push(res);
  }
    
  void do_TgToMM() {
	//cout << " seriesTg->series not implemented yet !" << endl;
    seriesTg last = stack_Tg.top();
    stack_Tg.pop();
    series res = last.toSeries();   //last.toSeries();
    stack_MM.push(res);
  }

  void do_kleeneMM()
  {
    series last = stack_MM.top();
    stack_MM.pop();
    last = last.star();
    stack_MM.push(last);
  }

  void do_assignMM()
  {
    string ident = stack_identMM.top();
    stack_identMM.pop();
    series last = stack_MM.top();
    vars_MM[ident] = last;
    stack_MM.pop(); 
    cout << last << endl;
  }
  void do_pushIdentMM()
  {
    stack_identMM.push("s_" + strIdent);
    strIdent.clear();
  }
  
  void do_printMM()
  {
    if (stack_MM.size() > 0)
    {
      std::cout << stack_MM.top() << endl;
      stack_MM.pop();
    }
  }

  void do_pushVarMM()
  {
    string strMM = "s_" + strIdent;
    strIdent.clear();   

    symtab_smm::iterator it = vars_MM.find(strMM);
    if (it == vars_MM.end())
    {
      string str = "undefined name " + strMM;
      cerr << str << endl;
      stack_MM.push(series::Epsilon());
    }
    else
    {
      stack_MM.push(vars_MM[strMM]);
    }
  }

  void do_equalMM()
  {
    series last = stack_MM.top();
    stack_MM.pop();
    series first = stack_MM.top();
    stack_MM.pop();
    if (first == last) cout << "true";
    else cout << "false";
  }


  void do_printVarMM()
  {
    string strMM = "s_" + strIdent;
    strIdent.clear();

    symtab_smm::iterator it = vars_MM.find(strMM);
    if (it == vars_MM.end())
    {
      string str = "undefined name " + strMM;
      cerr << str << endl;
     
    }
    else
    {
      cout << vars_MM[strMM] << endl;
    }
  }

  //-----------------------------------------------------------------------------------------------
  void do_pushEpsTg() { stack_Tg.push(seriesTg::Epsilon()); }

  void do_pushGammaTg(int n) { stack_Tg.push(Tg::g(n)); }

  void do_pushDeltaTg(int t) { stack_Tg.push(Tg::d(t)); }

  void do_pushBigDeltaTg(int T) { stack_Tg.push(Tg::D(T)); }


  void do_otimesTg() {
	seriesTg last = stack_Tg.top();
    stack_Tg.pop();
	seriesTg first = stack_Tg.top();
    stack_Tg.pop();
	seriesTg res = first * last;
    stack_Tg.push(res);
  }

  void do_oplusTg() {
	seriesTg last = stack_Tg.top();
    stack_Tg.pop();
	seriesTg first = stack_Tg.top();
    stack_Tg.pop();
	seriesTg res = first + last;
    stack_Tg.push(res);
  }

  void do_kleeneTg()
  {
    //cout << "Kleene star not connected yet!" << endl;
	seriesTg last = stack_Tg.top();
    stack_Tg.pop();
    //TODO
    last = last.star();     
    stack_Tg.push(last);
  }

  void do_infTg() {
	seriesTg last = stack_Tg.top();
    stack_Tg.pop();
	seriesTg first = stack_Tg.top();
    stack_Tg.pop();
	seriesTg res = first.infCD(last);
    stack_Tg.push(res);
  }

  void do_lfracTg() {
	seriesTg last = stack_Tg.top();
    stack_Tg.pop();
	seriesTg first = stack_Tg.top();
    stack_Tg.pop();
	seriesTg res = first.lfracCD(last);
    stack_Tg.push(res);
  }

  void do_rfracTg() {
	seriesTg last = stack_Tg.top();
    stack_Tg.pop();
	seriesTg first = stack_Tg.top();
    stack_Tg.pop();
	seriesTg res = first.rfracCD(last);
    stack_Tg.push(res);
  }

  void do_prcausTg() {
	seriesTg last = stack_Tg.top();
    stack_Tg.pop();
    //cout << "prcaus(Tg) not connected yet!" << endl;
	seriesTg res = seriesTg::toCausal(last);  // seriesTg::toCausal(last); 
    stack_Tg.push(res);	
  }

  void do_rightTg() 
  { // cout << "right(Tg) not connected yet!" << endl;
    seriesTg last = stack_Tg.top();
    stack_Tg.pop();
    last.toRight();
    stack_Tg.push(last);
  }

  void do_leftTg() {
   // cout << "left(Tg) not connected yet!" << endl;    
	seriesTg last = stack_Tg.top();
    stack_Tg.pop();
    last.toLeft();
    stack_Tg.push(last);
  }

  void do_MMToTg() {
    series last = stack_MM.top();
    stack_MM.pop();
    //cout << "Not connected yet!" << endl;
    stack_Tg.push(seriesTg::toSeriesTg(last));
  }

  void do_assignTg()
  {
    string ident = stack_identTg.top();
    stack_identTg.pop();
    seriesTg last = stack_Tg.top();
    vars_Tg[ident] = last;
    stack_Tg.pop();
    cout << last << endl;
  }
  void do_pushIdentTg()
  {
    stack_identTg.push("t_" + strIdent);
    strIdent.clear();
  }

  void do_printTg()
  {
    if (stack_Tg.size() > 0)
    {
      std::cout << stack_Tg.top() << endl;
      stack_Tg.pop();
    }
  }

  void do_pushVarTg()
  {
    string strTg = "t_" + strIdent;
    strIdent.clear();

    symtab_stg::iterator it = vars_Tg.find(strTg);
    if (it == vars_Tg.end())
    {
      string str = "undefined name " + strTg;
      cerr << str << endl;
      stack_Tg.push(polyTg::Epsilon());
    }
    else
    {
      stack_Tg.push(vars_Tg[strTg]);
    }
  }
  void do_printVarTg()
  {
    string strTg = "t_" + strIdent;
    strIdent.clear();

    symtab_stg::iterator it = vars_Tg.find(strTg);
    if (it == vars_Tg.end())
    {
      string str = "undefined name " + strTg;
      cerr << str << endl;      
    }
    else
    {
      cout << vars_Tg[strTg] << endl;
    }
  }
  void do_printTgAsDeltaVar()
  {
    seriesTg last = stack_Tg.top();
    stack_Tg.pop();
    cout << last.toStringAsDeltaVar() << endl;
  }

  void do_printAsCoreTg()
  {
    seriesTg last = stack_Tg.top();
    stack_Tg.pop();
    cout << last.getCore() << endl;
  }

  void do_pushInt(int w)
  {
    vect_Int.push_back(w);
  }

  void do_pushDeltaVarTg()
  {
    T_op deltav = T_op::deltaVar(vect_Int);
    vect_Int.clear();
    seriesTg p(Tg(deltav, 0));
    stack_Tg.push(p);
  }

  void do_equalTg()
  {
    seriesTg last = stack_Tg.top();
    stack_Tg.pop();
    seriesTg first = stack_Tg.top();
    stack_Tg.pop();
    if (first == last) cout << "true";
    else cout << "false";
  }
  //------------------------------------------------------------------------------------

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
      qi::alnum_type alnum_;
      qi::lexeme_type lexeme_;     

      gammaMM = 'g' >> int_[&do_pushGammaMM];
      deltaMM = 'd' >> int_[&do_pushDeltaMM];
      epsMM = (lexeme_["eps"])[&do_pushEpsMM];

      gammaEd = 'g' >> int_[&do_pushGammaEd];
      deltaEd = 'd' >> int_[&do_pushDeltaEd];
      muEd = 'm' >> int_[&do_pushMuEd];
      betaEd = 'b' >> int_[&do_pushBetaEd];
      nablaEd = 'N' >> int_[&do_pushNablaEd];
      epsEd = (lexeme_["eps"])[&do_pushEpsEd];
      
      gammaTg = 'g' >> int_[&do_pushGammaTg];
      deltaTg = 'd' >> int_[&do_pushDeltaTg];
      DeltaTg = 'D' >> int_[&do_pushBigDeltaTg];
      epsTg = (lexeme_["eps"])[&do_pushEpsTg];

      asMuVar = ("asMuVar(" >> expressionEd >> ')');
      asCoreEd = ("asCoreEd(" >> expressionEd >> ')');
      asCoreTg = ("asCoreTg(" >> expressionTg >> ')');
      asDeltaVar = ("asDeltaVar(" >> expressionTg >> ')');


      statement = asCoreEd[&do_printAsCoreEd]| asCoreTg[&do_printAsCoreTg] |equalMM|equalEd|equalTg|asDeltaVar[&do_printTgAsDeltaVar] |asMuVar[&do_printEdAsMuVar]|assignEd | assignTg |assignMM| identMM[&do_printVarMM]| identEd[&do_printVarEd] | identTg[&do_printVarTg] | ev[&do_printEd] |mm[&do_printMM]|tv[&do_printTg];
      
      infMM = ("inf(" >> expressionMM >> ',' >> expressionMM >> ')')[&do_infMM];
      fracMM = ("frac(" >> expressionMM >> ',' >> expressionMM >> ')')[&do_fracMM];
      prcausMM = ("pr+(" >> expressionMM >> ')')[&do_prcausMM];
      EdToMM = ("EdToMM(" >> expressionEd >> ')')[&do_EdToMM];
      TgToMM = ("TgToMM(" >> expressionTg >> ')')[&do_TgToMM];

      equalMM = ("?=(">>identMM[&do_pushVarMM] >> "," >> identMM[&do_pushVarMM]>>')')[&do_equalMM];

      identMM = lexeme_["s_" >> +(alnum_[&do_pushC])];
      assignMM = (identMM[&do_pushIdentMM] >> '=' >> expressionMM)[&do_assignMM];
      mm = ("MM{" >> expressionMM >> "}");      
      factorMM = polyMM | groupMM | kleeneMM | identMM[&do_pushVarMM]|infMM|fracMM|prcausMM|EdToMM|TgToMM;
      kleeneMM = ('[' >> expressionMM >> "]*")[&do_kleeneMM];
      groupMM = '(' >> expressionMM >> ')';
      termMM = factorMM >> *('.' >> factorMM[&do_otimesMM]);
      expressionMM = termMM >> *('+' >> termMM[&do_oplusMM]);
      polyMM = gammaMM | deltaMM |epsMM;

      seqEd = '<' >> uint_[&do_pushUint] >> *(',' >> uint_[&do_pushUint]) >> '>';
      muVarEd = ('m' >> seqEd)[&do_pushMuVarEd];
      betaVarEd = ('b' >> seqEd)[&do_pushBetaVarEd];

      infEd = ("inf(" >> expressionEd >> ',' >> expressionEd >> ')')[&do_infEd];
      lfracEd = ("lfrac(" >> expressionEd >> ',' >> expressionEd >> ')')[&do_lfracEd];
      rfracEd = ("rfrac(" >> expressionEd >> ',' >> expressionEd >> ')')[&do_rfracEd];
      prcausEd = ("pr+(" >> expressionEd >> ')')[&do_prcausEd];
      rightEd = ("right(" >> expressionEd >> ')')[&do_rightEd];
      leftEd = ("left(" >> expressionEd >> ')')[&do_leftEd];
      MMToEd = ("MMToEd(" >> expressionMM >> ')')[&do_MMToEd];
     
      equalEd = ("?=(" >> identEd[&do_pushVarEd] >> "," >> identEd[&do_pushVarEd] >> ')')[&do_equalEd];

      identEd = lexeme_["e_" >> +(alnum_[&do_pushC])];
      assignEd = (identEd[&do_pushIdentEd] >> '=' >> expressionEd)[&do_assignEd];
      ev = ("Ed{" >> expressionEd >> "}");      
      factorEd = polyEd | groupEd | kleeneEd | identEd[&do_pushVarEd]| infEd|lfracEd|rfracEd|prcausEd|rightEd|leftEd|MMToEd;
      kleeneEd = ('[' >> expressionEd >> "]*")[&do_kleeneEd];
      groupEd = '(' >> expressionEd >> ')';
      termEd = factorEd >> *('.' >> factorEd[&do_otimesEd]);
      expressionEd = termEd >> *('+' >> termEd[&do_oplusEd]);
      polyEd = gammaEd | deltaEd | betaEd | muEd |muVarEd|betaVarEd|nablaEd | epsEd;
     
      seqTg = '<' >> int_[&do_pushInt] >> *(',' >> int_[&do_pushInt]) >> '>';
      deltaVarTg = ('d' >> seqTg)[&do_pushDeltaVarTg];

      infTg = ("inf(" >> expressionTg >> ',' >> expressionTg >> ')')[&do_infTg];
      lfracTg = ("lfrac(" >> expressionTg >> ',' >> expressionTg >> ')')[&do_lfracTg];
      rfracTg = ("rfrac(" >> expressionTg >> ',' >> expressionTg >> ')')[&do_rfracTg];
      prcausTg = ("pr+(" >> expressionTg >> ')')[&do_prcausTg];
      rightTg = ("right(" >> expressionTg >> ')')[&do_rightTg];
      leftTg = ("left(" >> expressionTg >> ')')[&do_leftTg];
      MMToTg = ("MMToTg(" >> expressionMM >> ')')[&do_MMToTg];

      equalTg = ("?=(" >> identTg[&do_pushVarTg] >> "," >> identTg[&do_pushVarTg] >> ')')[&do_equalTg];

      identTg = lexeme_["t_" >> +(alnum_[&do_pushC])];
      assignTg = (identTg[&do_pushIdentTg] >> '=' >> expressionTg)[&do_assignTg];
      tv = ("Tg{" >> expressionTg >> "}");
      factorTg = polyTg | groupTg | kleeneTg | identTg[&do_pushVarTg]| infTg | lfracTg | rfracTg | prcausTg | rightTg | leftTg | MMToTg;
      kleeneTg = ('[' >> expressionTg >> "]*")[&do_kleeneTg];
      groupTg = '(' >> expressionTg >> ')';
      termTg = factorTg >> *('.' >> factorTg[&do_otimesTg]);
      expressionTg = termTg >> *('+' >> termTg[&do_oplusTg]);
      polyTg = gammaTg | deltaTg | DeltaTg|deltaVarTg|epsTg;


    }

    qi::rule<Iterator, ascii::space_type> statement,ev, expressionEd, infEd,lfracEd,rfracEd,prcausEd,rightEd,leftEd, MMToEd,asMuVar,
      factorEd, groupEd, termEd, polyEd, nablaEd, gammaEd,seqEd,muVarEd,betaVarEd, equalEd,asCoreEd,
      deltaEd, muEd, betaEd,epsEd, kleeneEd,identEd,assignEd;
    qi::rule<Iterator, ascii::space_type> expressionMM,mm,gammaMM,deltaMM,infMM,fracMM,prcausMM,EdToMM,TgToMM,equalMM,
      factorMM, groupMM, termMM, polyMM, epsMM, kleeneMM, identMM, assignMM;
    qi::rule<Iterator, ascii::space_type> expressionTg, tv, infTg, lfracTg, rfracTg, prcausTg, rightTg, leftTg,gammaTg, deltaTg,DeltaTg, MMToTg,
      factorTg, groupTg, termTg, polyTg, epsTg, kleeneTg, identTg, assignTg, deltaVarTg,seqTg,equalTg, asDeltaVar, asCoreTg;
  };
}

namespace etvo
{

  void parser::runCalculatorEtvo()
  {
    typedef std::string::const_iterator iterator_type;
    typedef calculatorEtvo::calculator<iterator_type> calculator;

    boost::spirit::ascii::space_type space; // Our skipper
    calculator calc; // Our grammar
    string line;
    string header = "ETVO = (Event|Time)-Variant Operators\n\n";
    header+="Basic calculator for series in MinMax[[g,d]], E[[d]] and T[[g]]\n";
    header += "\t Contibutors : B.Cottenceau L.Hardouin J.Trunk  - Fev. 2019";
    cout << header << endl << endl;

    cout << endl << ">>";
    while (getline(cin, line))
    {
	  if (line == "quit") return;

      std::string::const_iterator iter = line.begin();
      std::string::const_iterator end = line.end();
      try {
        bool r = phrase_parse(iter, end, calc, space);
        if (r && iter == end)
        {
          /*
          cout << "stack Ed=" << calculatorEtvo::stack_Ed.size() << endl;
          cout << "stack MM=" << calculatorEtvo::stack_MM.size() << endl;
          cout << "stack Tg=" << calculatorEtvo::stack_Tg.size() << endl;
          cout << "vect Uint" << calculatorEtvo::vect_Uint.size() << endl;
          cout << "vect Int" << calculatorEtvo::vect_Int.size() << endl;*/
          
        }
        else
        {
          cout << "syntax error" << endl;
          while (calculatorEtvo::stack_Ed.size()) calculatorEtvo::stack_Ed.pop();
          while (calculatorEtvo::stack_Tg.size()) calculatorEtvo::stack_Tg.pop();
          while (calculatorEtvo::stack_MM.size()) calculatorEtvo::stack_MM.pop();

          calculatorEtvo::vect_Uint.clear();
          calculatorEtvo::vect_Int.clear();
        }
        
      }
      catch (etvoException exEtvo)
      {
        cout << exEtvo.Message() << endl;
        while (calculatorEtvo::stack_Ed.size()) calculatorEtvo::stack_Ed.pop();
        while (calculatorEtvo::stack_Tg.size()) calculatorEtvo::stack_Tg.pop();
        while (calculatorEtvo::stack_MM.size()) calculatorEtvo::stack_MM.pop();

        calculatorEtvo::vect_Uint.clear();
        calculatorEtvo::vect_Int.clear();
      }
      catch (exception ex)
      {
        cout << ex.what() << endl;
      }
      cout << endl << ">>";
    }
  }
}