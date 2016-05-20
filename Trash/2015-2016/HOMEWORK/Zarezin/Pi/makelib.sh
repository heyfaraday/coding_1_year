gcc -c Pi.s -o Pi.o
ar rc libPi.a Pi.o
ranlib libPi.a
gcc Pi.c libPi.a -o Pi.out
echo succes
./Pi.out
