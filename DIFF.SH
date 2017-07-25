#!/bin/bash

if diff file1 file2 > /dev/null
then
		echo "the file is same"
		rm file2
else
		echo "error!!"
		exit
fi
