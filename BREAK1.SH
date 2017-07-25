#!/bin/bash
#break statement function
num=1
while [ $num -lt 10 ]
do
	
	
	num=`expr $num + 1`

	if [ $num -gt 5 ]
	then
		echo "the value limit is exceed $num"
		continue
	fi

	echo "entered value is $num"
done