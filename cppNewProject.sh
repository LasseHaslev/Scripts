#! /bin/sh

# This script is used to create a default setup for a new
# c++ project, includes a dummy makefile for g++11.

echo -n "Enter Project Name: "
read pname
mkdir $PWD/$pname
mkdir $PWD/$pname/src $PWD/$pname/out $PWD/$pname/lib
touch $PWD/$pname/Makefile
touch $PWD/$pname/src/main.cpp
echo "# Wich compiler to use
CXX=g++

# Wich options to compile with
# -std=c++11 use g++11 compiler, -c compile into an object file, -Wall turn on all warnings.
CXXFLAGS=-std=c++11 -c -Wall

# Directories for source files and output file
SRC=src/
LIB=lib/
OUT=out/

output: \$(SRC)main.o
\t\$(CXX) \$(SRC)main.o -o \$(OUT)main

main.o: \$(SRC)main.cpp
\t\$(CXX) \$(CXXFLAGS) \$(SRC)main.cpp

clean:
\trm */*.o */main" > $PWD/$pname/Makefile
echo "// Description: New project
// Author: Jonas Knarbakk

#include <cstdio>

int main( int argc, char ** argv ){
    puts("Hello World!");
    return 0;
}" > $PWD/$pname/src/main.cpp
