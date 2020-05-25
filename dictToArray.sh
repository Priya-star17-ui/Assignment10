#! /usr/local/bin/bash 
read -p "first entry:" a;
read -p "second entry:" b;
read -p "third entry:" c;
declare -A results
res=$(($a*$b))
result=$(($res+$c))
results[1]=$result
result1=$(($res*$c))
results[2]=$result1
res1=$(($a%$b))
result2=$(($res+$c))
results[3]=$result2
res2=$(($a+$c))
result3=$(($res/$b))
results[4]=$result3
echo ${results[*]} 