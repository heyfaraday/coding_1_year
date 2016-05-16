gcc -c func_int.s -o func_int.o
ar rc func_int.a func_int.o
ranlib func_int.a
gcc func_int.c func_int.a -o func_int.out
./func_int.out
