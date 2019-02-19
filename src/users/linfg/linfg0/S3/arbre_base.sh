#!/bin/sh

#Display all the subrepositories of a given repository in parameter.

echo "Start script ...\n"

list() {
	ls $1 | while read rep ; do
		if [ -f $1$rep ]; then #Check if the is a file.
			continue
                fi
		echo $rep 
		rep=$rep/
		if [ -z "$(ls $1$rep)" ]; then #Check if the directory is empty.
                        continue
                fi
		list $1$rep
	done
}

list $1
echo "\nEnd script ..."
