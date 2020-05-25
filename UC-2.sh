#! /bin/bash -x
read -p "first number:" a
read -p "second number:" b
read -p "third number:" c

res=$(($a*$b))
result=$(($res+$c))

echo $result