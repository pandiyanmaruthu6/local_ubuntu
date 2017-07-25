#!/bin/bash
#the while loop man page
test=$(cat commandlist)
while $test
do	
	echo "`man $(test) >> test.txt`"

done