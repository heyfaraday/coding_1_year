gcc -c max_int.s -o max_int.o
ar rc libmax_int.a max_int.o
ranlib libmax_int.a
gcc max_int.c libmax_int.a -o max_int.out
echo succes
./max_int.out
