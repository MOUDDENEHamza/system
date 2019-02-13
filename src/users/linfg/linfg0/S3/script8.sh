#!/bin/sh

#Write an interactif script able to navigate on the Linux system.
dir=`ls -ld */ | wc -l`
echo "Current repository : "`pwd`"\n" 

for i in `seq 1 $dir`
do
	echo $i")- "`ls -d */` >> listrepo
done
cat listrepo

while [ 1 = 1 ] ; do
	read -p "Input the number of the repository where you want to go : " number
	if [ $number = -2 ] ; then
		rm listrepo
		exit 0
	fi
	if [ $number = -1 ] ; then
		rm listrepo
		cd ../
		echo "Current repository : "`pwd`"\n"
		dir=`ls -ld */ | wc -l`
	        for i in `seq 1 $dir` ;do
        	        echo $i")- "`ls -d */` >> listrepo
		done
		cat listrepo
		continue
	fi
	cd `grep $number listrepo | cut -f 2 -d " "`
	dir=`ls -ld */ | wc -l`
	for i in `seq 1 $dir` ;do
        	echo $i")- "`ls -d */` >> listrepo
	done
	pwd
	rm listrepo
done
rm listrepo
