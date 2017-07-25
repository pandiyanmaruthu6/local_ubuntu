#!/bin/bash
#infinite loop
myfun()
{ 
line=0
echo -n "enter the file name:"
read filename
echo "add appointment details On $filename"
if [ ! -f $filename ]
	then
		echo "file not exists"
		echo "created file for appointment" > $filename
fi
while :
do
	echo -n "enter appoint name;"
	read name
	echo -n "enter the date:"
	read date
	echo -n "any remark:"
	read remark
	echo -n "do you want to continue:"
	read conti
	if [ $conti=y -o $conti=Y ]
		then
		line=`expr $line + 1`
		echo "$line.$name.$date.$remark" > $filename
	fi
	if [ $conti=n -o $conti=N ]
		then
		cat $filename
		return
	fi
done
}
myfun