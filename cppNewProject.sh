#! /bin/sh

# This script is used to create a default setup for a new
# c++ project, includes a dummy makefile for g++11.

echo -n "Enter Project Name: > "
read pname
mkdir $PWD/$pname
mkdir $PWD/$pname/src $PWD/$pname/out $PWD/$pname/lib
touch $PWD/$pname/Makefile
echo "# Wich compiler to use
CC=g++

# Wich options to compile with
# -std=c++0x use g++11 compiler, -c compile into an object file.
CFLAGS=-std=c++0x -c

# Directories for source files and output file
SRC=src/
LIB=lib/
OUT=out/

output: \$(SRC)main.o
\t\$(CC) \$(SRC)main.o -o \$(OUT)main

main.o: \$(SRC)main.cpp
\t\$(CC) \$(CFLAGS) \$(SRC)main.cpp

clean:
\trm -rf *.o main" > $PWD/$pname/Makefile
