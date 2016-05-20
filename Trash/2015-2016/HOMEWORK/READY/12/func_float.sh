gcc -c func_float.s -o func_float.o
ar rc func_float.a func_float.o
ranlib func_float.a
gcc func_float.c func_float.a -o func_float.out
./func_float.out
