#!/bin/bash
#user database loop
file=coursedb
##check file is present if not create
[ ! -f $file ] && > $file
#loop condition starts
while true
do
	clear
	echo -e "\t\t Students course Datases ITSYSHUB"
	echo -e "\t\t\t IT COURSES-2017"
	echo -e "what do you want to do with us?"
	echo -e "\t 1. create user database"
	echo -e "\t 2. 	list user databases"
	echo -e "\t 3.	delte user database"
	echo -e "\t 4.	search user database"
	echo
	##Get input from users
	echo -n " Please enter your choice: "
	read ans junk
	[ $ans = "" ] && continue
	##Case statement to continue the function
	case $ans in
		1)   echo "Please enter the following information"
			 read -p "	 name:" name
			 read -p "contact:" ph
			 read -p "  email:" email
			 echo ""
			 echo "$name $ph $email" >> $file
			 ;;
		2)   ##to view the user databases
			(echo "to list the users databases:"
				echo 
				cat $file)|more
			echo "There are `cat $file |wc -l` datas found"
			;;
		3) echo "option not yet implemented"
			;;
		4) echo "option not yet implemented"
			;;
		q*|Q*) echo "you choosed quit option"
				exit 0
				;;
		*) echo "Please choose optin between 1 to 4"
			;;
	esac
echo -n "Hit enter to continue: "
read junk
done





