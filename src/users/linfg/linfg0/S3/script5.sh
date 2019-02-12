#!/bin/sh

#Display only the name of student who has the least number. 
grep 'linfg[[:digit:]]$' liste.txt | sort -k 3 > temp
head -1 temp | cut -f 1 -d " "

#Display only the name of student who has the greater number. 
grep 'linfg[0-9][0-9][0-9]$' liste.txt | sort -k 3 > temp
tail -1 temp | cut -f 1 -d " "
rm temp

#Display the number of students who it name it contains a number of caracters greater that the first parmeter and less than the second.

tail +6 liste.txt | cut -f 1 -d " " > temp
line=`cat temp | wc -l`
cpt=0

for i in `seq 1 $line`
do	
	n=`sed -n "$i"p temp | wc -m`
	if [ `expr $n - 1` -ge $1 ] && [ `expr $n - 1` -le $2 ] ; then
		cpt=$((cpt + 1))
	fi
done
echo $cpt
