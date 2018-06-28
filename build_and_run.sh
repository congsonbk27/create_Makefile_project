#!/bin/bash
#Build project

gcc -c -o main.o main.c
gcc -c -o sub.o src/sub.c
gcc -c -o sum.o src/sum.c
gcc -o sum_sub main.o sum.o sub.o 

rm *.o
chmod 777 sum_sub
./sum_sub