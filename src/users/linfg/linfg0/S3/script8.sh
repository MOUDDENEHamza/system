#!/bin/sh

#Write an interactif script able to navigate on the Linux system.

navigate() {
	cpt=0
	touch listrepo
	dir=`ls -ld */ | wc -l`
	echo "Current repository : "`pwd`"\n" 
	ls -d */ | while read line ; do
		cpt=$((cpt + 1))
		echo $cpt")- "$line >> listrepo
	done
	cat listrepo
	echo
}

echo "Start of script ...\n"
navigate
while [ 1 = 1 ] ; do
	read -p "Input the number of the repository where you want to go : " number
	echo
	if [ $number = -2 ] ; then
		echo "\nEnd of script ..."
		rm listrepo
		exit 0
	fi
	if [ $number = -1 ] ; then
		cd ../
		rm listrepo
		navigate
		continue
	fi
	if [ $number = 0 ] ; then
		echo "Current repository : "`pwd`"\n"
		cat listrepo
		echo
		continue
        fi
	cd `grep $number listrepo | cut -f 2 -d " "`
	rm ../listrepo
	navigate
done
