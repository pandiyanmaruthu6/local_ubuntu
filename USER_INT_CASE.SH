#!/bin/bash
#user interaction with case statement and while
while :
 do
	clear
	echo "##############Menu####################"
	echo "1) view current date"
	echo "2) view calender"
	echo "3) view present working directory and list files"
	echo "4) top process in your system"
	echo "5) exit"
	echo "#######################################"
	echo -n "enter your choice :"
	read choice
	case $choice in
		1) date;
			;;
		2) echo "current month calenter is: "
			;;
		3) echo "current working directory;"
			;;
		4) echo "top process of your system: ";
			read
			top;
			;;
		5) exit 
			;;
		*) echo "enter the relelated option"
			read
			exit
			;;
 	 esac
 	done