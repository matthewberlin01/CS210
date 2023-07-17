#!/bin/bash

if [ -e $1 ] && [ -d $1 ] && ! [ -z $1 ];
then
	echo
	for i in $1/*
        do
		fileSize=$(stat -c%s $i)
		echo "File: $i"
		echo
		if [ $fileSize  -ne 0 ];
		then
			echo "Size: $fileSize"
		fi
		echo
        done

elif ! [ -d $1 ];
then
	echo
	echo "Error: ‘$1’ is an invalid directory"
	echo
	echo "$ echo $ ?"
	echo
	echo 1
	echo
else
	echo
	echo "Error: missing argument"
	echo
	echo "$ echo $ ?"
	echo
	echo 1
	echo
fi
