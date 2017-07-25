#!/bin/bash
#read names from user input and save into file
save=data.db
echo "enter the your details"
read -p "First_Name: " First_Name
read -p "Last_Name: " Last_Name
read -p "age: " age
read -p "address: " address
read -p "contact; " ph
echo "$First_Name:$Last_Name:$age;$address;$ph" >> $save
sudo su
useradd $First_Name
echo


echo "##################current data's in $save##################"
cat $save
echo 
echo "toatal users in $save file `cat $save |wc -l`"
