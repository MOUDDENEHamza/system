#!/bin/sh

#Display all the subrepositories of a given repository in parameter.

echo "Start script ...\n"

list() {
	ls -d $1*/ | while read rep ; do
		echo $rep 
		list $1/$rep
	done
	echo
}

while [ 1 = 1 ] ; do
	read -p "Turn : " turn
	echo
	list $1
done

echo "\nEnd script ..."

