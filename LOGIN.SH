#!/bin/bash
#calculate user login time
read -p "enter your username: " user_name
time=0
while true
do
	who |grep $user_name > /dev/null
	if [ $? -eq 0 ]
	then
		if [ $time -eq 0 ]
		then
		echo "sucessfully logged in $time $user_name"
		fi
	else
		if [ $time -ne 0 ]
		then
		 echo "$user_name he logged in $time ms late"
	exit
		else
			time=`expr $time + 1`
			sleep 2
		fi
	fi
done
	

