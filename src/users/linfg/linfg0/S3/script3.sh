#/bin/sh

#Create a temporary directory.
mkdir REP

#Create list.txt containing the name of files finishing by .txt or .sh.
ls *.txt *.sh > REP/list.txt

#Copy the last file corresponding of the last filename in list.txt
cp `tail -1 REP/list.txt` REP/test.txt
