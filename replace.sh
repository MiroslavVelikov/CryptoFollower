#!/bin/bash
cat Favor.txt
echo 

read -p "Enter the search string: " search
read -p "Enter the replace string: " replace
sed -i "s/$search/$replace/" Favor.txt
echo
cat Favor.txt

function ask() {
echo "Do you want to make one more change? [Y/N]"
read answer

if [ "$answer" == "Y" ]
then 
	./replace.sh
elif [ "$answer" == "N" ]
then 	 clear
	./menu.sh
else 
	echo "Input must be [Y/N] "
	ask
fi

}
ask
