#!/bin/bash
#function writing
function args()
{
	echo "total arguments passed in $0:is $*"
	echo "arg $1"
	echo "arg $2"
	echo "arg $3"
	echo "argumetns count:$#"
	return
}
args hello welcome to function writings