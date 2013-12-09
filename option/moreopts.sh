#!/bin/bash  
while getopts :ab:cd opt  
do  
	case $opt in  
		a) echo "-a option";;  
		b) echo "-b option with value $OPTARG";;  
		c) echo "-c option";;  
		d) echo "-d option";;  
		*) echo $opt not a option;;  
	esac  
done  

count=1  
shift $[$OPTIND-1]  
for para in "$@"  
do  
echo "#$count=$para"  
count=$[$count+1]   
done  
