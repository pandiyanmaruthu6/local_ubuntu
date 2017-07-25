#!/bin/bash
pattern=maruthu
total=0
for file in *
do
	[ ! -f $file ] && continue
	if grep $pattern $file > /dev/null
		then
		a=`cat $file |wc -c`
		total=`expr $total + $a`
	fi
done
echo "Total size of $patten files are '$total'"