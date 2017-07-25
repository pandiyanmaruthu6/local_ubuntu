BEGIN {
	printf "Salary for the month of June.\n"
	Printf "Infoview Technologies\n"
	printf "-----------------------------\n"
}
{
	total = $3 * $4
	fst=$1
	sec=$2
	gtotal=gtotal + total
	printf "%d %s Rs. %f\n", fst, sec, total

}
END {
	printf "--------------------------------\n"
	printf "Total salary for this June month.\n"
	printf "\tGrand Total Rs. %7.2f\n", gtotal
	printf "---------------------------------\n"
}