#!/bin/bash
read count
i=1
while [ $i -le $count ]
do
	echo "This is loop $i"
	i=`expr $i + 1`
done