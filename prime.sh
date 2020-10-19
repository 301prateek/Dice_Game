#!/bin/bash -x
#Author: Prateek

#Prime number program
count=0

num=$((RANDOM%9000+1000))

for(( i=1; i<$num/2; i++))
do
	if [ $(($num%$i)) -eq 0 ]
	then
		count=$(($count+1))
	fi
done

if [ $count -eq 1 ]
then
	echo "Is a Prime number: $num"
	echo "Factors count: $count"
else
	echo "Not Prime number: $num"
	echo "Factors count: $count"
fi



