#!/bin/bash
#read directory
read -p "enter the directory: " dir
fun=`date`
if [ -d $dir -a `cd $dir` ] ]
	then
		pwd
		touch $dir/$fun.sh
		echo "file $fun.sh created in $dir"
else
	echo "no such a directory $dir"
fi

