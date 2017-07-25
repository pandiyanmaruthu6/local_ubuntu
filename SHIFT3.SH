#!/bin/bash
#shift command example
while [ "$1" ]
do
	if [ $1 = -b ]
		then
		ob=$2
		case $ob in
			2) basesystem="bin";;
			8) basesystem="octal";;
			16) basesystem="hexa";;
			*) echo "unknown base system" ;;
		esac
		shift 2
	elif [[ $1 = -n ]]; then
		num=$2
		shift 2
	else
		"unknow argument $1"
		exit 1
	fi
done
output=`echo "obase=$ob;ibase=10;$num"|bc`
echo "$num decimal number output=$output in $basesystem(base=$ob)"

