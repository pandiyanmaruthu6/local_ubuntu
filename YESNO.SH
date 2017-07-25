#!/bin/bash
#yesno function
dialog --title "choose your option" --backtitle "yes or no options" --yesno "do you want to delete test file" 7 60 
ex=$?/
case $ex in
	0) echo "file deleted" ;;
	1) echo "try again" ;;
	255) echo "function not working" ;;
esac