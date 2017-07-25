#!/bin/bash
#exec function example
echo -n "enter file name: "
read file
if [ -z $file ]
then 
	echo "you entered null $file file"
	exit
fi
terminal = `tty`
excec < $file
count = 1
while read line
do
	echo "$count.$line"
	count = `expr $count + 1`
done
