#! /bin/sh

if [ $# -eq 0 ]	
then
	file=omar
	elif [ $# -eq 1 ]
	then
		file=$1
	else
		echo "usage : $0[file]">&2
		exit 1
fi
	
if [ ! -f $file  ]
then
	echo "File $file inxistant">&2
fi
	
if [ ! -r $file ]
then
	echo "$file protégé en lecture">&2
	exit 3
fi
	
echo "Affichage a partir du debut"
cat $file
echo "Affichage à partir de la fin"
nb_lines=`grep -c '.*' $file`
while [ $nb_lines -gt 0 ]
do
	head -n $nb_lines $file|tail - 1
	nb_lines=`expr $nb_lines - 1`
done
exit 0
