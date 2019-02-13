#!/bin/sh

#Translate f_anglais.txt to french and write the traduction on f_francais.txt.
cat f_anglais.txt | while read line

do
        for word in $line
        do
                echo -n `grep -w $word dico.txt | cut -f 2 -d " "` >> f_francais.txt
		echo -n " " >> f_francais.txt	
	done
	echo >> f_francais.txt
done

cat f_francais.txt
rm f_francais.txt
