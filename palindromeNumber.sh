#!/bin/bash -x
#Author: Prateek

#Palindrome number
echo "3 Digit numbers"
a=$((RANDOM%900+100))
b=$((RANDOM%900+100))
c=$((RANDOM%900+100))


for n in $a $b $c
do
	r=0
	rev=""
	temp=$n
	while [ $n -gt 0 ]
	do
		r=$(( $n % 10 ))
		n=$(( $n / 10 ))
		rev=`echo $rev$r`
	done

	if [ $rev -eq $temp ]
	then
		echo "$temp=> is Palindrome number"
	else
		echo "$temp=> is Not Palindrome"
	fi

done

