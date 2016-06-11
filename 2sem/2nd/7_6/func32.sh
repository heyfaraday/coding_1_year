gcc -c -m32 func32.s -o func32.o
ar rc func32.a func32.o
ranlib func32.a
gcc -m32 func.c func32.a -o func32.out
./func32.out
