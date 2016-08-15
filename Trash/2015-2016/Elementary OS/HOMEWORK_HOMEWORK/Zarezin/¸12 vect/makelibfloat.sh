gcc -c vectfloat.s -o vectfloat.o
ar rc libVectfloat.a vectfloat.o
ranlib libVectfloat.a
gcc vectfloat.c libVectfloat.a -o vectfloat.out
echo succes
./vectfloat.out
