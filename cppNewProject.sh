#! /bin/sh

echo -n "Enter Project Name: > "
read pname
mkdir $PWD/$pname
mkdir $PWD/$pname/src $PWD/$pname/out $PWD/$pname/lib
