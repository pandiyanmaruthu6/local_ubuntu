#!/bin/bash
#print more than 4 words in file
awk 'BEGIN {count=0;}
{if ( NF > 5 )
{count= count + 1;}}
END
{print count;}' exec.sh