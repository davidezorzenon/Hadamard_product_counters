//#define _SCL_SECURE_NO_WARNINGS

// includes : lcm,gcd,etvoException,global
#include "etvo/common/EtvoTools.cpp"
#include "etvo/common/etvoException.cpp"
#include "etvo/common/global.cpp" 

// includes : lminmaxgd classes (from L. Hardouin Library) in namespace [mmgd]
#include "etvo/wrapperMMGD/lminmaxgd.cpp"

// includes : base class for a standard epsilon,Top description
#include "etvo/common/ISterm.cpp"

//includes : wrapperMinMaxGD -> to use gd,poly,series in namespace [etvoII]
#include "etvo/wrapperMMGD/gdWrapper.cpp"
#include "etvo/wrapperMMGD/polyWrapper.cpp"
#include "etvo/wrapperMMGD/seriesWrapper.cpp"

//includes : Fper,Fminp,Fmaxp : quasi-periodic functions 
#include "etvo/Fper/Fper.cpp"
#include "etvo/Fper/Fminp.cpp"
#include "etvo/Fper/Fmaxp.cpp"

// includes : E_op, T_op, gNg , dDd : coefficients of E[[d]] and T[[g]] series
#include "etvo/etop/E_op.cpp"
#include "etvo/etop/T_op.cpp"
#include "etvo/etop/gNg.cpp"
#include "etvo/etop/dDd.cpp"

// includes :	Ed (monomial in E[[d]]) 
//				polyEd (polynomial in E[[d]]) 
//				seriesEd (ultimately periodic series in E[[d]])
#include "etvo/seriesEd/Ed.cpp"
#include "etvo/seriesEd/polyEd.cpp"
#include "etvo/seriesEd/seriesEd.cpp"

// includes :	Tg (monomial in T[[g]]) 
//				polyTg (polynomial in T[[g]]) 
//				seriesTg (series in T[[g]]) 

#include "etvo/seriesTg/Tg.cpp"
#include "etvo/seriesTg/polyTg.cpp"
#include "etvo/seriesTg/seriesTg.cpp"

// includes functions to create PovRay outputs
#include "etvo/grafic/PovRay.cpp"
