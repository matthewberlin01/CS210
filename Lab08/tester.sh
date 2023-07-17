#!/bin/bash


if [ -e $1 ] && ! [ $1 == "" ];
then
	echo $1
else
	echo "I need 1 argument"
	echo 1
fi
