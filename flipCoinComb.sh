#! /bin/bash
declare -A dict
head=0
tail=0
num=10
for (( i=0; i<=num; i++ ))
do
	flip=$(($RANDOM%3))
	if [ $flip -eq 1 ]
	then
        	((head++))
	else
        	((tail++))
	fi
	percentHead=$(( ( $head*100 ) / 10 ))
	percentTail=$(( ($tail*100 ) / 10 ))
done
dict=([a1]=$head [a2]=$tail)
echo "Times head was flipped:" $head
echo "Times tail was flipped:" $tail

#Storing in Dictionary
echo ${dict[@]}
echo "Percentage of head is :" $percentHead
echo "Percentage of tail is : "$percentTail
