gcc -c func.s -o func.o
ar rc func.a func.o
ranlib func.a
gcc func.c func.a -o func.out
./func.out
