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
#include<algorithm>
#include "../etvo/common/etvoException.h"

using namespace std;
using namespace etvo;

typedef std::map<std::string, etvo::seriesEd> symtab_sed;
typedef std::map<std::string, etvo::seriesTg> symtab_stg;
typedef std::map < std::string, etvo::series> symtab_smm;

typedef std::map<std::string, etvo::matrix<seriesEd>> symtab_med;
typedef std::map<std::string, etvo::matrix<seriesTg>> symtab_mtg;
typedef std::map < std::string, etvo::matrix<series>> symtab_mmm;


namespace calculatorEtvo
{
  symtab_sed vars_Ed;  // vars in E[d]
  symtab_stg vars_Tg;  // vars in T[g]
  symtab_smm vars_MM;  // vars in MinMaxGD

  symtab_med vars_mEd;  // vars in matrix<E[d]>
  symtab_mtg vars_mTg;  // vars in matrix<T[g]>
  symtab_mmm vars_mMM;  // vars in matrix<MinMaxGD>

  std::stack<etvo::seriesEd> stack_Ed;
  std::stack<etvo::seriesTg> stack_Tg;
  std::stack<etvo::series> stack_MM;

  std::stack<etvo::matrix<seriesEd>> stack_mEd;
  std::stack<etvo::matrix<seriesTg>> stack_mTg;
  std::stack<etvo::matrix<series>> stack_mMM;

  std::stack<std::string> stack_identEd;
  std::stack<std::string> stack_identTg;
  std::stack<std::string> stack_identMM;

  std::stack<std::string> stack_identmEd;
  std::stack<std::string> stack_identmTg;
  std::stack<std::string> stack_identmMM;

  std::vector<unsigned> vect_Uint;
  std::vector<int> vect_Int;
  std::string strIdent;

  namespace qi = boost::spirit::qi;
  namespace ascii = boost::spirit::ascii;
    
  void do_pushC(char c)
  {
	  strIdent += c;
  }
  void do_pushInt(int w)
  {
	  vect_Int.push_back(w);
  }

  void do_pushUint(unsigned w)
  {
	  vect_Uint.push_back(w);
  }

// all semantic actions are in included source files
#include "doEd.cpp"
#include "doMM.cpp"
#include "doTg.cpp"
#include "domEd.cpp"
#include "domTg.cpp"
#include "domMM.cpp"  
  
  void do_topovEd()
  {	  
	  int zmax = vect_Int.back();
	  vect_Int.pop_back();
	  int ymax = vect_Int.back();
	  vect_Int.pop_back();
	  int xmax = vect_Int.back();
	  vect_Int.pop_back();
	  strIdent = "e" + strIdent;
	  seriesEd s = vars_Ed[strIdent];
	  cout << s.toStringAsMuVar() << endl;
	  polyEd pTrans = s.getPolyUpTo(zmax);
	  graphicPR::PovRay pr(strIdent + ".pov");
	  strIdent = "";
	  pr.LocationCamera = graphicPR::PovRay::Point(20, -20, 20);
	  pr.CameraLookAt = graphicPR::PovRay::Point(0, 0, 2);
	  pr.xmax = xmax;
	  pr.ymax = ymax;
	  pr.zmax = zmax;
	  pr.xmin = 0;
	  pr.ymin = 0;
	  pr.zmin = 0;
	  pr.Pov_StartEd();
	  pr.AxisEd();
	  pTrans.toPov(pr, graphicPR::PovRay::Color(0, 0, 1));
	  pr.Pov_End();
	  pr.SaveToFile();
  }

  void do_topovTg()
  {
	  int zmax = vect_Int.back();
	  vect_Int.pop_back();
	  int ymax = vect_Int.back();
	  vect_Int.pop_back();
	  int xmax = vect_Int.back();
	  vect_Int.pop_back();
	  strIdent = "t" + strIdent;
	  seriesTg s = vars_Tg[strIdent];
	  cout << s.toStringAsDeltaVar() << endl;	  
	  polyTg pTrans = s.getPolyUpTo(ymax);

	  graphicPR::PovRay pr(strIdent +".pov");
	  strIdent = "";
	  pr.LocationCamera = graphicPR::PovRay::Point(-20, -20, +20);
	  pr.CameraLookAt = graphicPR::PovRay::Point(0, 0, 2);
	  pr.xmax = xmax;
	  pr.ymax = ymax;
	  pr.zmax = zmax;
	  pr.xmin = 0;
	  pr.ymin = 0;
	  pr.zmin = 0;
	  pr.Pov_StartTg();
	  pr.AxisTg();
	  pTrans.toPov(pr, graphicPR::PovRay::Color(0, 0, 1));
	  pr.Pov_End();
	  pr.SaveToFile();	 
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
	  
	  
      infMM = ("inf(" >> expressionMM >> ',' >> expressionMM >> ')')[&do_infMM];
      fracMM = ("frac(" >> expressionMM >> ',' >> expressionMM >> ')')[&do_fracMM];
      prcausMM = ("pr+(" >> expressionMM >> ')')[&do_prcausMM];
      EdToMM = ("EdToMM(" >> expressionEd >> ')')[&do_EdToMM];
      TgToMM = ("TgToMM(" >> expressionTg >> ')')[&do_TgToMM];

      equalMM = ("?=(">>identMM[&do_pushVarMM] >> "," >> identMM[&do_pushVarMM]>>')')[&do_equalMM];

      identMM = lexeme_["s" >> +(alnum_[&do_pushC])];
      assignMM = (identMM[&do_pushIdentMM] >> '=' >> expressionMM)[&do_assignMM];
      mm = ("M{" >> expressionMM >> "}");      
      factorMM = polyMM | groupMM | kleeneMM | entrymMM| identMM[&do_pushVarMM]|infMM|fracMM|prcausMM|EdToMM|TgToMM;
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

      identEd = lexeme_["e" >> +(alnum_[&do_pushC])];
      assignEd = (identEd[&do_pushIdentEd] >> '=' >> expressionEd)[&do_assignEd];
      ev = ("E{" >> expressionEd >> "}");      
      factorEd = polyEd | groupEd | kleeneEd | entrymEd | identEd[&do_pushVarEd]| infEd|lfracEd|rfracEd|prcausEd|rightEd|leftEd|MMToEd;
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

      identTg = lexeme_["t" >> +(alnum_[&do_pushC])];
      assignTg = (identTg[&do_pushIdentTg] >> '=' >> expressionTg)[&do_assignTg];
      tv = ("T{" >> expressionTg >> "}");
      factorTg = polyTg | groupTg | kleeneTg | entrymTg | identTg[&do_pushVarTg]| infTg | lfracTg | rfracTg | prcausTg | rightTg | leftTg | MMToTg;
      kleeneTg = ('[' >> expressionTg >> "]*")[&do_kleeneTg];
      groupTg = '(' >> expressionTg >> ')';
      termTg = factorTg >> *('.' >> factorTg[&do_otimesTg]);
      expressionTg = termTg >> *('+' >> termTg[&do_oplusTg]);
      polyTg = gammaTg | deltaTg | DeltaTg|deltaVarTg|epsTg;

	  identmEd = lexeme_["E" >> +(alnum_[&do_pushC])];
	  assignmEd = (identmEd[&do_pushIdentmEd] >> '=' >> expressionmEd)[&do_assignmEd];
	  epsMatEd = ("eps(" >> int_[&do_pushInt] >> ',' >> int_[&do_pushInt] >> ')')[&do_pushMatEd];	
	  factormEd = epsMatEd | groupmEd |kleenemEd |  identmEd[&do_pushVarmEd] |infmEd |lfracmEd |rfracmEd|prcausmEd;
	  kleenemEd = ('[' >> expressionmEd >> "]*")[&do_kleenemEd];
	  groupmEd = '(' >> expressionmEd >> ')';
	  termmEd = factormEd >> *('.' >> factormEd[&do_otimesmEd]);
	  expressionmEd = termmEd >> *('+' >> termmEd[&do_oplusmEd]);	 
	  assignEntrymEd = (identmEd[&do_pushIdentmEd] >> '(' >> int_[&do_pushInt] >> ',' >> int_[&do_pushInt] >> ")=" >>expressionEd)[&do_assignEntrymEd];
	  entrymEd = (identmEd[&do_pushIdentmEd] >> '(' >> int_[&do_pushInt] >> ',' >> int_[&do_pushInt] >> ")")[&do_pushEntrymEd];
	  infmEd = ("inf(" >> expressionmEd >> ',' >> expressionmEd >> ')')[&do_infmEd];
	  lfracmEd = ("lfrac(" >> expressionmEd >> ',' >> expressionmEd >> ')')[&do_lfracmEd];
	  rfracmEd = ("rfrac(" >> expressionmEd >> ',' >> expressionmEd >> ')')[&do_rfracmEd];
	  prcausmEd = ("pr+(" >> expressionmEd >> ')')[&do_prcausmEd];

	  identmTg = lexeme_["T" >> +(alnum_[&do_pushC])];
	  assignmTg = (identmTg[&do_pushIdentmTg] >> '=' >> expressionmTg)[&do_assignmTg];
	  epsMatTg = ("eps(" >> int_[&do_pushInt] >> ',' >> int_[&do_pushInt] >> ')')[&do_pushMatTg];
	  factormTg = epsMatTg | groupmTg | kleenemTg | identmTg[&do_pushVarmTg] | infmTg | lfracmTg | rfracmTg | prcausmTg;
	  kleenemTg = ('[' >> expressionmTg >> "]*")[&do_kleenemTg];
	  groupmTg = '(' >> expressionmTg >> ')';
	  termmTg = factormTg >> *('.' >> factormTg[&do_otimesmTg]);
	  expressionmTg = termmTg >> *('+' >> termmTg[&do_oplusmTg]);
	  assignEntrymTg = (identmTg[&do_pushIdentmTg] >> '(' >> int_[&do_pushUint] >> ',' >> int_[&do_pushUint] >> ")=" >> expressionTg)[&do_assignEntrymTg];
	  entrymTg = (identmTg[&do_pushIdentmTg] >> '(' >> int_[&do_pushUint] >> ',' >> int_[&do_pushUint] >> ")")[&do_pushEntrymTg];
	  infmTg = ("inf(" >> expressionmTg >> ',' >> expressionmTg >> ')')[&do_infmTg];
	  lfracmTg = ("lfrac(" >> expressionmTg >> ',' >> expressionmTg >> ')')[&do_lfracmTg];
	  rfracmTg = ("rfrac(" >> expressionmTg >> ',' >> expressionmTg >> ')')[&do_rfracmTg];
	  prcausmTg = ("pr+(" >> expressionmTg >> ')')[&do_prcausmTg];

	  identmMM = lexeme_["S" >> +(alnum_[&do_pushC])];
	  assignmMM = (identmMM[&do_pushIdentmMM] >> '=' >> expressionmMM)[&do_assignmMM];
	  epsMatMM = ("eps(" >> int_[&do_pushInt] >> ',' >> int_[&do_pushInt] >> ')')[&do_pushMatMM];
	  factormMM = epsMatMM | groupmMM | kleenemMM | identmMM[&do_pushVarmMM] | infmMM | lfracmMM | rfracmMM | prcausmMM;
	  kleenemMM = ('[' >> expressionmMM >> "]*")[&do_kleenemMM];
	  groupmMM = '(' >> expressionmMM >> ')';
	  termmMM = factormMM >> *('.' >> factormMM[&do_otimesmMM]);
	  expressionmMM = termmMM >> *('+' >> termmMM[&do_oplusmMM]);
	  assignEntrymMM = (identmMM[&do_pushIdentmMM] >> '(' >> int_[&do_pushUint] >> ',' >> int_[&do_pushUint] >> ")=" >> expressionMM)[&do_assignEntrymMM];
	  entrymMM = (identmMM[&do_pushIdentmMM] >> '(' >> int_[&do_pushUint] >> ',' >> int_[&do_pushUint] >> ")")[&do_pushEntrymMM];
	  infmMM = ("inf(" >> expressionmMM >> ',' >> expressionmMM >> ')')[&do_infmMM];
	  lfracmMM = ("lfrac(" >> expressionmMM >> ',' >> expressionmMM >> ')')[&do_lfracmMM];
	  rfracmMM = ("rfrac(" >> expressionmMM >> ',' >> expressionmMM >> ')')[&do_rfracmMM];
	  prcausmMM = ("pr+(" >> expressionmMM >> ')')[&do_prcausmMM];
	  topovEd = ("MakePovEd(" >> identEd >> "," >> int_[&do_pushInt] >> "," >> int_[&do_pushInt] >> "," >> int_[&do_pushInt] >> ")")[&do_topovEd];
	  topovTg = ("MakePovTg(" >> identTg >> "," >> int_[&do_pushInt] >> "," >> int_[&do_pushInt] >> "," >> int_[&do_pushInt] >> ")")[&do_topovTg];

	  statement = asCoreEd[&do_printAsCoreEd] | asCoreTg[&do_printAsCoreTg]
		  | equalMM | equalEd | equalTg | asDeltaVar[&do_printTgAsDeltaVar]
		  | asMuVar[&do_printEdAsMuVar] | assignEd | assignTg | assignMM		
		  | assignmEd | assignEntrymEd
		  | assignmTg | assignEntrymTg
		  | assignmMM | assignEntrymMM
		  | identMM[&do_printVarMM] | identEd[&do_printVarEd] | identTg[&do_printVarTg]
		  | identmEd[&do_printVarmEd]
		  | identmTg[&do_printVarmTg]
		  | identmMM[&do_printVarmMM]		  
		  | ev[&do_printEd] | mm[&do_printMM] | tv[&do_printTg]
		  | topovEd | topovTg;
    }

	qi::rule<Iterator, ascii::space_type> topovEd, topovTg;

	qi::rule<Iterator, ascii::space_type> infmMM, lfracmMM, rfracmMM, identmMM, assignmMM,
		assignEntrymMM, expressionmMM, epsMatMM, factormMM,
		kleenemMM, groupmMM, termmMM, entrymMM, prcausmMM;

	qi::rule<Iterator, ascii::space_type> infmTg, lfracmTg, rfracmTg, identmTg, assignmTg, 
					assignEntrymTg, expressionmTg, epsMatTg, factormTg,
					kleenemTg, groupmTg, termmTg, entrymTg, prcausmTg;

	qi::rule<Iterator, ascii::space_type> infmEd,lfracmEd,rfracmEd,identmEd, assignmEd,
					assignEntrymEd, expressionmEd,epsMatEd,factormEd,
					kleenemEd,groupmEd,termmEd,entrymEd,prcausmEd;

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
	string prompt = "->";
    typedef std::string::const_iterator iterator_type;
    typedef calculatorEtvo::calculator<iterator_type> calculator;

    boost::spirit::ascii::space_type space; // Our skipper
	
    calculator calc; // Our grammar
    string line;
    string header = "ETVO = (Event|Time)-Variant Operators\n\n";
    header+="Basic calculator for series in MinMax[[g,d]], E[[d]] and T[[g]]\n";
    header += "\t Contibutors : B.Cottenceau L.Hardouin J.Trunk  - 05/21/2019";
    cout << header << endl;

    cout << endl <<prompt;
    while (getline(cin, line))
    {
	  if (line == "quit") return;
	  if (line == "cls")
	  {
		  system("cls");
		  cout << header << endl;		  
		  line = "";
	  }
	  	 	  
      std::string::const_iterator iter = line.begin();
      std::string::const_iterator end = line.end();

      try {
		  if (line != "")
		  {
			  if (line.front() != '%')
			  {
				  bool r = phrase_parse(iter, end, calc, space);
				  if (r && iter == end)
				  {
					  /*
					  cout << "stack Ed=" << calculatorEtvo::stack_Ed.size() << endl;
					  cout << "stack MM=" << calculatorEtvo::stack_MM.size() << endl;
					  cout << "stack Tg=" << calculatorEtvo::stack_Tg.size() << endl;
					  cout << "stack mEd=" << calculatorEtvo::stack_mEd.size() << endl;
					  cout << "stack mMM=" << calculatorEtvo::stack_mMM.size() << endl;
					  cout << "stack mTg=" << calculatorEtvo::stack_mTg.size() << endl;
					  cout << "vect Uint=" << calculatorEtvo::vect_Uint.size() << endl;
					  cout << "vect Int=" << calculatorEtvo::vect_Int.size() << endl;
					  */					
				  }
				  else
				  {
					  cout << "syntax error";
					  while (calculatorEtvo::stack_Ed.size()) calculatorEtvo::stack_Ed.pop();
					  while (calculatorEtvo::stack_Tg.size()) calculatorEtvo::stack_Tg.pop();
					  while (calculatorEtvo::stack_MM.size()) calculatorEtvo::stack_MM.pop();
					  while (calculatorEtvo::stack_mEd.size()) calculatorEtvo::stack_mEd.pop();
					  while (calculatorEtvo::stack_mTg.size()) calculatorEtvo::stack_mTg.pop();
					  while (calculatorEtvo::stack_mMM.size()) calculatorEtvo::stack_mMM.pop();
					  calculatorEtvo::vect_Uint.clear();
					  calculatorEtvo::vect_Int.clear();
				  }
				  cout << endl;
			  }
		  }
        
      }
      catch (const etvoException & exEtvo)
      {
        cout << exEtvo.Message();
        while (calculatorEtvo::stack_Ed.size()) calculatorEtvo::stack_Ed.pop();
        while (calculatorEtvo::stack_Tg.size()) calculatorEtvo::stack_Tg.pop();
        while (calculatorEtvo::stack_MM.size()) calculatorEtvo::stack_MM.pop();
		while (calculatorEtvo::stack_mEd.size()) calculatorEtvo::stack_mEd.pop();
		while (calculatorEtvo::stack_mTg.size()) calculatorEtvo::stack_mTg.pop();
		while (calculatorEtvo::stack_mMM.size()) calculatorEtvo::stack_mMM.pop();
        calculatorEtvo::vect_Uint.clear();
        calculatorEtvo::vect_Int.clear();
      }
      catch (const exception & ex)
      {
        cout << ex.what();
      }
	  cout << prompt;
    }
  }
}