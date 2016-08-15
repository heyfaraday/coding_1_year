gcc -c vect.s -o vect.o
ar rc libVect.a vect.o
ranlib libVect.a
gcc vect.c libVect.a -o vect.out
echo succes
./vect.out
