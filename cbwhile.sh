#!/bin/bash
read -p "please enter the directory:" filename
while [ $filename ]
 do
 	if [ ! -d $filename ]
 	then
 	echo "enter the directory"
 	continue
 	fi
 	if [ `ls -l $filename|wc -l` -gt 100 ]
 		then
 		echo "unable to process more then 100 files"
 		break
 	fi
 read -p "please enter the directory:" filename
done