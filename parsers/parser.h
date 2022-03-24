#ifndef PARSER_H
#define PARSER_H

#include "../etvo/seriesTg/seriesTg.h"
#include "../etvo/seriesEd/seriesEd.h"

//#include "../etvo/wrapperMMGD/polyWrapper.h"



#include<string>
namespace etvo{
class parser
{
    public:
        static polyEd parsePolyEd(const std::string & s);
        static seriesEd parseSeriesEd(const std::string & s);
		static seriesTg parseSeriesTg(const std::string & s);
        static polyTg parsePolyTg(const std::string & s);
        static poly parsePoly(const std::string & str);
        static void runCalculatorEtvo();
};

}

#endif // PARSER_H
