gcc -c transp.s -o transp.o
ar rc libtransp.a transp.o
ranlib libtransp.a
gcc transp.c libtransp.a -o transp.out
echo succes
./transp.out
