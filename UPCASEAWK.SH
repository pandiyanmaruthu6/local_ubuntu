#!/bin/bash
awkfile="rename.awk"
awkpath=$HOME/$awkfile
ls -l |awk '{print $9}' > /tmp/file1.$$
tr "[a-z]" "[A-Z]" < /tmp/file1.$$ > /tmp/file2.$$
paste /tmp/file1.$$ /tmp/file2.$$ > /tmp/filedb.$$
rm -f /tmp/file1.$$
rm -f /tmp/file2.$$
if [ -f $awkpath ]
	then
	awk -f $awkpath /tmp/filedb.$$
else
	echo -e "\n $0: Fatel error- $awkpath not found"
	echo -e "\n Make sure \$awkpath is set correctly in $0 script\n"
fi
#rm -rf /tmp/filedb.$$