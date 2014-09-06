all:stringx.so

stringx.c:	stringx.pyx
	cython stringx.pyx

stringx.o: stringx.c
	gcc -c -fPIC stringx.c -O3 -I/Users/jerry/pkgs/vpy/include/python2.7

stringx.so: stringx.o
	gcc -shared stringx.o -o stringx.so -l python

clean:
	rm -rf stringx.c stringx.so stringx.o 
