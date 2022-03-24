# file names of examples
MFIEEETASE = mainIEEETASE17
MFIEEETAC = mainIEEETAC14
MFWODES14 = mainWODES14
MFZHOU = mainZhouHe
MFPTEGJDEDS = mainPTEG_JDEDS
MFTESTS = mainTestsETVO
# compiler
CC=g++
# compilation options (needs C++11 at least)
CFLAGS=-std=c++11 -Wno-deprecated

all: Examples Calculator
Examples: IEEETAC14 WODES14 ZHOU PTEG_JDEDS
PTEG_JDEDS: etvo.o 
	$(CC) -o $(MFPTEGJDEDS).exe etvo.o $(MFPTEGJDEDS).cpp $(CFLAGS)
ZHOU: etvo.o
	$(CC) -o $(MFZHOU).exe etvo.o $(MFZHOU).cpp $(CFLAGS)
WODES14: etvo.o
	$(CC) -o $(MFWODES14).exe etvo.o $(MFWODES14).cpp $(CFLAGS)
IEEETASE17: etvo.o 
	$(CC) -o $(MFIEEETASE).exe etvo.o $(MFIEEETASE).cpp $(CFLAGS)
IEEETAC14: etvo.o 
	$(CC) -o $(MFIEEETAC).exe etvo.o $(MFIEEETAC).cpp $(CFLAGS)
Calculator:etvo.o parsersEtvo.o
	$(CC) -o calcETVO.exe mainCalculator.cpp etvo.o parsersEtvo.o $(CFLAGS)
testsEtvo.o: testsEtvo.cpp
	$(CC) -c testsEtvo.cpp $(CFLAGS) 
Tests: testsEtvo.o etvo.o
	$(CC) -o $(MFTESTS).exe etvo.o testsEtvo.o $(MFTESTS).cpp $(CFLAGS)
etvo.o: etvo.cpp
	$(CC) -c etvo.cpp $(CFLAGS)
parsersEtvo.o: parsersEtvo.cpp
	$(CC) -c parsersEtvo.cpp $(CFLAGS) 

#MAIN: etvo.o
#	$(CC) -o main.exe etvo.o main.cpp $(CFLAGS)


# Do as follows: modify etvo.cpp and then make all
