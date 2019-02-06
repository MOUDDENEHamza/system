#!/bin/sh

#Display only the name of student who has the least number. 
grep 'linfg[[:digit:]]$' liste.txt | sort -k 3 >> temp
head -1 temp

