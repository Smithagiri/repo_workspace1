#!/bin/bash
set -x

read -p "Enter the number of elements to be :" n
for ((i=0; i<$n; i++))
do
	read -p "Enter the value of arr[$i]:" arr[$i]
done

for ((i=0; i<$n; i++))
do
	for ((j=0; j<n-i-1; j++))
	do
		if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
		then
			#swapping
			x=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$x
		fi
	done
	#echo "Number is descending order :" ${arr[*]}
done
echo "Number is descending order :" ${arr[*]}
