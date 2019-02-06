#!/bin/sh

#Create a directory wich it name is passing on parameter then copy a file in the current repository to repository created.
mkdir $1
cp ./$2 $1
