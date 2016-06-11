gcc -m32 -c func_int32.s -o func_int32.o
ar rc func_int32.a func_int32.o
ranlib func_int32.a
gcc -m32 func_int.c func_int32.a -o func_int32.out
./func_int32.out
