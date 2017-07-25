BEGIN {
	print "----------------------------"
	print "Annual salary-2017"
	print "-----------------------------"
}

{
	total=$3 * $4
	b=$1
	ans=$2
	gtotal = gtotal + total
	print b " " ans " Rs. " total  
}
END {
	print "-------------------------------"
	print "Grand Total= Rs."gtotal
	print "-------------------------------"
}