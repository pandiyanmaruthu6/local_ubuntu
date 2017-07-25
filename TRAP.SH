#!/bin/bash
#trap command to send signals like ctrl+c
trap_sig()
{
	echo "press key to send cancel signal"
	rm -rf /tmp/input.$$
	exit 1
}
app()
{
line=0
echo "enter appointment file"
read filename
if [ ! -f $filename ]
	then
	echo "file $filename not exists"
	echo "the appointment date is `date`" > /tmp/input.$$
fi
#infinite loop starts
while :
do
	echo -n "enter appointment name: "
	read name
	echo -n "enter date: "
	read time
	echo -n "any remarks: "
	read rem
	echo -n "do you want to continue: Y/N"
	read ans
	if [ $ans = y -o $ans = Y ]
		then 
		line=`expr $line + 1`
		echo "$line-$name-$time-$rem" >> /tmp/input.$$
	fi
	echo -n "do you want to add next appointment: "
	read ans1
	if [ $ans1 = n -o $ans1 = N ]
		then
		cat /tmp/input.$$ > $filename
		return
	fi
done
}
trap trap_sig 2
app 

