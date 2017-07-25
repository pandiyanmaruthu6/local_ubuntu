#!/bin/bash
#read variables from user input and store into files
read -p "enter your name" name
echo "yourname: $name" >details.txt
read -p "enter your address" address
echo "Your address: $address" >> details.txt
read -p "entr your phone number" phone
echo "Phone Number: $phone" >>details.txt