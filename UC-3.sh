#! /bin/bash -x
read -p "first entry:" a
read -p "second entry:" b
read -p "third entry:" c

res=$(($a+$c))
result=$(($res/$b))
echo $result