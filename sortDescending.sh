#!/usr/local/bin/bash -x
read -p "first entry:" a;
read -p "second entry:" b;
read -p "third entry:" c;
declare -A results
num=$(($a*$b))
result=$(($num+$c))
results[1]=$result
result1=$(($num*$c))
results[2]=$result1
num1=`expr $a%$b`
result2=$(($num+$c))
results[3]=$result2
num2=$(($a+$c))
result3=$(($num/$b))
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
		if [ ${arr[j]} -le ${arr[i]} ]
		then
			temp=${arr[i]}
			arr[i]=${arr[j]}
            arr[j]=$temp
		fi
	done
done

echo ${arr[*]} 
