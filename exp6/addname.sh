#!/bin/bash
classlist="$1"
username="$2"
if [ $# -ne 2 ]; then
	echo "TWO ARGUMENTS ARE REQUIRED"
	exit
fi
if [ ! -e $1 ]; then
	echo "FILE DOES NOT EXIST"
	exit
fi
f=`grep -i "$2" "$1" | wc -l`
if [ $f -ne 0 ]; then
	echo "USERNAME EXISTS"
	cat $1
else
	echo $2 >> $1
	cat $1
fi
