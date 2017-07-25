#!/bin/bash
#print exact 5 lenth words
num=0
for word in `cat exec.sh`
do
	line=`echo "$word" |grep [AEIOUaeiou]`
	if [ $? -eq 1 ]
		then
			echo "$num $word"
			num=`expr $num + 1`
	fi
done
echo $num
