#!/bin/bash


echo "Enter 10 of your favourite currencies. Write it with only lower cases 
nad replace all the white spaces with '-' "
read -p "01: " fav1
read -p "02: " fav2
read -p "03: " fav3
read -p "04: " fav4
read -p "05: " fav5
read -p "06: " fav6
read -p "07: " fav7
read -p "08: " fav8
read -p "09: " fav9
read -p "10: " fav10

echo -e "${fav1},${fav2},${fav3},${fav4},${fav5},${fav6},${fav7},${fav8},${fav9},${fav10}" > Favor.txt
clear
./menu.sh
