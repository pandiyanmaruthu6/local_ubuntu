#!/bin/bash
#the man page for commands
for man in `cat commandlist`
do
	man $man >> all_man.txt
	echo "######################################################" >> all_man.txt
done