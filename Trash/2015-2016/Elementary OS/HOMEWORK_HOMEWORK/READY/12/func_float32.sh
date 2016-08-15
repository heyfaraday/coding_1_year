gcc -m32 -c func_float32.s -o func_float32.o
ar rc func_float32.a func_float32.o
ranlib func_float32.a
gcc -m32 func_float.c func_float32.a -o func_float32.out
./func_float32.out
