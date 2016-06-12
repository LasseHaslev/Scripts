#! bin/sh

# This script makes a new class and header files and adds it
# to the makefile in the current working directory

echo -n "Class name: "
read cname
touch $PWD/src/$cname.cpp
touch $PWD/src/$cname.h
echo "

$cname.o: \$(SRC)$cname.cpp \$(SRC)$cname.h
\t\$(CXX) \$(CXXFLAGS) \$(SRC)$cname.cpp" >> $PWD/makefile
