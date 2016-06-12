#! bin/sh

# This script makes a new class and header files and adds it
# to the makefile in the current working directory

echo "Class name: "
read cname
touch $PWD/src/$cname.cpp
echo "

$cname.o: $PWD/$cname.cpp $PWD/$cname.h
\tg++ -std=c++0x -c $PWD/$cname.cpp" >> $PWD/makefile
