#!/bin/sh

list() {
	begin="|  "
	if [ $# -ne 2 ] ; then
		echo "ERROR : Wrong usage\nUsage : $0 repository_name str" >&2
		exit 1
	fi

	if [ -d "$1" -a ! -x "$1" -a ! -r "$1" ] ; then 
		echo "ERROR : Permission denied" >&2
        	exit 2
	fi

	for rep in "$1"/* ; do
		if [ -d "$rep" ] ; then
			echo "$2"`basename "$rep"`
			str="$begin$2"
			list "$rep" "$str"
		else
			if [ -f "$rep" -o "ls -A $rep" ] ; then
				continue
			fi
		fi
	done
}

str="+- "
echo "$1"
list "$1" "$str"
exit 0
