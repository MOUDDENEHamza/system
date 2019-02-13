#!/bin/sh

#Translate f_anglais.txt to french and write the traduction on f_francais.txt.
line=`cat temp | wc -l`

for i in `seq 1 $line`
do
	sed -n $(i)p f_anglais.txt | cut -f 2 -d " "
done
