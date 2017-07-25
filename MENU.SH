#!/bin/bash
#items selection from menu
dialog --backtitle "Linux Menu" --title "Select Menu Items" --menu "Select your option" 15 60 8 date/time "To View date and time" cal "view calender" vim "view or edit file" 2> /tmp/move.txt
files=`cat /tmp/move.txt`
case $files in
date/time) date;;
cal) cal;;
vim) vi ;;
*) enter current comment;;
esac 