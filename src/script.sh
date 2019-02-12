#! /bin/sh

if test $# = 1	
then
	cat omar
	exit 0
else
	cat $1
	exit 1
fi
