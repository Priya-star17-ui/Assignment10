#! /bin/bash -x
read -p "first input:" a
read -p "second input:" b
read -p "third input:" c

com=$(($a%$b))
compute=$(($com+$c))
echo $compute