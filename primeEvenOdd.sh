#!/bin/bash -x
read -p "enter last range:" range
declare -a  arr_even_stack
declare -a arr_odd_stack
declare -a arr_prime

function checkPrimeEvenOdd()
 {

	for((i=1;i<=$range;i++))
	do
		#checking even odd number
			if [ $(($i%2)) -eq 0  ]
			then
					arr_even_stack[$i]=$i
			else
					arr_odd_stack[$i]=$i
			fi
		#checking prime number	
count=0
	for (( p=2;p<=$i/2;p++ ))
	do
		if [ $(($i%$p)) -eq 0 ]
		then
			((count++))
		break
		fi
	done
if	[ $count -eq  0 ];
then
	arr_prime[$p]=$p
fi
done
}

result=$(checkPrimeEvenOdd  $range)
#echo ${arr_even_stack[@]}
echo "Even number are:" ${arr_even_stack[@]}
echo "odd number are:" ${arr_odd_stack[@]} 
echo "prime number are" ${arr_prime[@]}
echo $result
