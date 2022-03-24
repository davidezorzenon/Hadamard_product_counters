
To start use any example you can find in the folder example. 
You need the include of files and namespaces as given.

WINDOWS :
If you use windows, you juste have to compile.
You need to preserve the relative position of folder.
If you are an expert you can create a library from
the src file. Here to be sure of the running in any 
system all is compiled at each execution.



LINUX or MacOS X (with Xcode Command Line Tools):

To compile and link source files, in examples directory, into executable :

g++ sourcefilename.cpp -o executablefilename 

For example, with the source file backwardOptimalControl.cpp :

g++ backwardOptimalControl.cpp -o backwardOptimalControl

To execute backwardOptimalControl :

./backwardOptimalControl