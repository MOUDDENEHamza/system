#!/bin/sh

#Count all files in the current repository.
echo "It exists `ls -p | egrep -v /$ | wc -l` in the current repository"

#Count all files finishing by .txt.
echo "It exists `ls -p *.txt | egrep -v /$ | wc -l` finishing by .txt"

#Count all files finishing by .sh.
echo "It exists `ls -p *.sh | egrep -v /$ | wc -l` finishing by .sh"

#Count all hidden files.
echo "It exists `ls -p .?*  | egrep -v /$ | wc -l` hidden files"

#Count other files.
echo "It exists `ls -p *.bin *tp*  | egrep -v /$ | wc -l` other files"
