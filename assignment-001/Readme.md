Problem Statement:

To Build Simple Calculator. which Perform Simple Arithmatic Operations(+,-,*,/).  

_____________________________________________________

1)Compile *.c files:
$make all

	Makefile Compile all the *.c files and  create *.o ,*.a , *.so files.

output of above command:

	gcc -O -c main.c 
	gcc -O -c add.c 
	gcc -O -c sub.c
	gcc -O -c mul.c
	gcc -O -c div.c
	ar rcs libmylib.a add.o sub.o mul.o div.o     //create static library
	gcc *.c -o lib.so -fPIC -shared		      //create shared library
	gcc -lm -o myProgram main.o -L. -lmylib
 
______________________________________________________

2)To Run executable files:

$./myProgram		

//where 'myProgram' is Target-object create using above command(executing makefile)
______________________________________________________
3)Remove  all *.o , *.a , *.so files from the given directory

$make clean

output:
	rm -f myProgram *.o *.a *.so



