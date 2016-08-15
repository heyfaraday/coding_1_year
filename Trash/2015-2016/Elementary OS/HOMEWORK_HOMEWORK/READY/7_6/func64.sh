gcc -c func64.s -o func64.o
ar rc func64.a func64.o
ranlib func64.a
gcc func.c func64.a -o func64.out
./func64.out
