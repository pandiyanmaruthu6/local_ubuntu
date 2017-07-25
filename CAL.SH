#!/bin/bash
#calender box
dat=$(dialog --stdout --title "My calender"  \
--calendar "select a date:" 0 0 8 09 1993)
case $? in
	0) echo "you have entered into calender:"
		;;
	1) echo "you have pressed cancel"
		;;
	255) echo "box closed"
		 ;;
esac