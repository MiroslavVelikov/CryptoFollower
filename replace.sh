#!/bin/bash
filename="Favor.txt"
read -p "Enter the search string: " search
read -p "Enter the replace string: " replace
var=$(<Favor.txt)

strarr=(`echo $var | tr ','`)
echo "${strarr[@]}"

sed -i "s/$search/$replace/" $filename
echo "${strarr[@]}"


