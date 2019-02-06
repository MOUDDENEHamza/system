#!/bin/sh

#Count all files in the current repository.
echo "It exists `ls -l | grep -c '^-'` in the current repository"

#Count all files finishing by .txt.
echo "It exists `ls -l | grep -c '.txt'` finishing by .txt"

#Count all files finishing by .sh.
echo "It exists `ls -l | grep -c '.txt'` finishing by .sh"

#Count all hidden files.
#echo "It exists `ls -p .?*  | egrep -v /$ | wc -l` hidden files"
echo "It exists `ls -l .?* | grep -c '^-'` hidden files"

#Count other files.
echo "It exists `ls -l | grep '^-' | grep -v '\.txt' | grep -cv '\.sh'` other files"
