#!/bin/sh

if [ $# -ne 1 ] ; then
	echo "ERROR : Wrong usage\nUsage : $0 repository_name" >&2
	exit 1
fi

if [ -d "$1" -a ! -x "$1" -a ! -r "$1" ] ; then 
	echo "ERROR : Permission denied" >&2
        exit 2
fi

for rep in "$1"/* ; do
	if [ -d "$rep" ] ; then
		basename "$rep"
		"$0" "$rep"
	else
		if [ -f "$rep" ] ; then
			continue
		fi
	fi
done

exit 0
