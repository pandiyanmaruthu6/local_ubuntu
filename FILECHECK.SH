#!/bin/bash
#test file status
read -p "enter the file name: " file
if [ -z $file ]
	then
		echo "entered emty"
elif [ -f $file -a -w $file ] ; then
	echo "file is writable"
else
	echo "not writable"
fi