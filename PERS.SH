#!/bin/bash
#percentage process example

num=0
while [ $num -ne 100 ]
do
	
	num=`expr $num + 1`
	sleep 1
done | dialog --title "samba install" --gauge "percentage complete..." 10 60 20