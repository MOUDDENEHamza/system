#!/bin/sh

#Display the date in french.
date -u | cut -f 1 -d "(" | tr -d ','
