#!/bin/bash
read -p "please enter the directory name:" dir
while [ ! -d $dir ]
do
	echo "you are not entered directory name"
	read -p "please enter the correct directoyr name:" dir
done
cd $dir
echo "we are successfully entered into $dir directory"