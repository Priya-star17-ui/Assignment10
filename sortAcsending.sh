#!/usr/local/bin/bash -x
read -p "first entry:" a;
read -p "second entry:" b;
read -p "third entry:" c;
declare -A results
op=$(($a*$b))
result=$(($op+$c))
results[1]=$result
result1=$(($op*$c))
results[2]=$result1
op1=`expr $a%$b`
result2=$(($op+$c))
results[3]=$result2
op2=$(($a+$c))
result3=$(($op/$b))
results[4]=$result3
arr=()
counter=0
for i in ${!results[*]}
do
	arr[((counter++))]=${results[i]}
done
echo ${arr[*]}
for (( i=0; i<=2; i++ ))
do
	for (( j=i+1; j<=3; j++ ))
	do
		if [ ${arr[j]} -ge ${arr[i]} ]
		then
			tmp=${arr[i]}
			arr[i]=${arr[j]}
            arr[j]=$tmp
		fi
	done
done

echo ${arr[*]} 
