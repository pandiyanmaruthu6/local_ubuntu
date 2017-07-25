#!/bin/bash
#test calculation
sum=0
for i in {1..10}
do
	sum=`expr $i + $sum`
done
echo $sum
