#!/bin/sh

#Display all the subrepositories of a given repository in parameter.
list() {
        ls $1 | while read rep ; do
		if [ -f $1$rep ]; then #Check if the is a file.
                        continue
                fi
		echo $str$rep
                rep=$rep/
                if [ -z "$(ls $1$rep)" ]; then #Check if the directory is empty.
			continue
                fi
                begin="|  "
                str="$begin$str"
		list $1$rep $begin$str
                str="+- "
        done
}

echo "Start script ..."
str="+- "
echo $1
list $1/ $str
echo "\nEnd script ..."
