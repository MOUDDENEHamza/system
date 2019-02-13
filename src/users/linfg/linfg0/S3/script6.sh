#!/bin/sh

#Display the date in french.
day=`date -R | cut -f 1 -d ","`
month=`date -R | cut -f 3 -d " "`

if [ $day = "Mon" ] ; then
        day="Lundi"
fi

if [ $day = "Thue" ] ; then
        day="Mardi"
fi  

if [ $day = "Wed" ] ; then
	day="Mercredi"
fi

if [ $day = "Thur" ] ; then
        day="Jeudi"
fi  

if [ $day = "Frid" ] ; then
        day="Vendredi"
fi  

if [ $day = "Sat" ] ; then
        day="Samedi"
fi  

if [ $day = "Sun" ] ; then
        day="Dimanche"
fi

if [ $month = Jan ] ; then
        month="Janvier"
fi

if [ $month = Feb ] ; then
        month="Février"
fi

if [ $month = March ] ; then
        month="Mars"
fi

if [ $month = Apr ] ; then
        month="Avril"
fi

if [ $month = May ] ; then
        month="Mai"
fi

if [ $month = June ] ; then
        month="Juin"
fi

if [ $month = Jul ] ; then
        month="Juillet"
fi

if [ $month = Aug ] ; then
        month="Aout"
fi

if [ $month = Sept ] ; then
        month="Septembre"
fi

if [ $month = Octo ] ; then
        month="Octobre"
fi

if [ $month = Nov ] ; then
        month="Novembre"
fi

if [ $month = Dece ] ; then
        month="Décembre"
fi

echo $day `date -R | cut -f 2 -d " "` $month `date -R | cut -f 4 -d " "` `date -R | cut -f 5 -d " "`
