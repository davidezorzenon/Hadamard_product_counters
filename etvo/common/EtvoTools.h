#ifndef TOOLS_H
#define TOOLS_H
namespace etvo
{

class Tools
{
    public:
        static int lcm(int,int);
        static int gcd(int,int);
        static unsigned int lcm(unsigned int, unsigned int);
        static unsigned int gcd(unsigned int, unsigned int);
        static long lcm(long,long);
        static long gcd(long,long);

        static int Min(int , int);
        static int Max(int , int);

        static long Min(long , long);
        static long Max(long , long);
        
        static int MaxInfinity();
        static int MinInfinity();
};
}

#endif // TOOLS_H
