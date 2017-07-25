#!/bin/bash
#error save to file
if [ $# -lt 2 ]
	then
	echo "no arguments less then 2"
	echo "file:$0 is have less args"
	exit
fi
ans=`expr $1 + $2`
echo "the ans $ans"