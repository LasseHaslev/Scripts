#! bin/sh

# This script makes a new class and header files and adds it
# to the makefile in the current working directory

echo -n "Class name: "
read cname
touch $PWD/$cname.cpp
touch $PWD/$cname.h
echo "
$cname.o: \$(SRC)$cname.cpp \$(SRC)$cname.h
\t\$(CXX) \$(CXXFLAGS) \$(SRC)$cname.cpp" >> $PWD/../Makefile

# Search for match and append filename to the end of the line
sed -i "/output:\ \$(SRC)main.o/ s/$/ \$(SRC)$cname.o/" $PWD/../Makefile
# Search for a match and append filename right after match
sed -i "s/^\t\$(CXX)\ \$(SRC)main.o/&\ \$(SRC)$cname.o/" $PWD/../Makefile
