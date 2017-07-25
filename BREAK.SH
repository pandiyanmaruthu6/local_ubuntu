#!/bin/bash
#break statement
read -p "enter your choice: " a
while [ $a -le 5 ]
do
	if [ $a -eq 1 ]
	then
		echo "suntv"
	
	elif [ $a -eq 2 ]; then
		#statements
		echo "ktv"
	
	elif [ $a -eq 3 ]; then
		#statements
		echo "vijay tv"
	
	else
		if [ $a -gt 3 ]
		then
			echo "break the loop"
			break
		fi
	fi
	break
done