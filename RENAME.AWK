BEGIN {
	sfile=$1
	dfile=$2
} 
{
mvcmd= "mv " $1 " " $2
printf " Renaming %s to %s\n", $1,$2
system(mvcmd)
}
END {
	
}