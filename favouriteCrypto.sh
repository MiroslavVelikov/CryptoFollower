Favour="Favour.txt"
echo "$(cat $Favour)" | tr "[A-Z]" "[a-z]" | tr " " "-" > names.txt


readarray -td, array <<< "$(cat names.txt),"; unset 'array[-1]'

echo "Currency--Price--Price_Change"

for name in "${array[@]}"
do

	./crFollower.sh $name
	grep -o '\$[0-9,.-]*' output.txt | sed '1,2!d' > values.txt
	price="$(echo $(cat values.txt) | cut -d' ' -f1)"
	price_change="$(echo $(cat values.txt) | cut -d' ' -f2)"
	printf "${name}--${price}--${price_change}"
	echo  
done
echo "Do you want to make another list?[Y/N]"
read answer
if [ "$answer" == "Y" ]
then 
	clear
	./favouriteCrypto.sh
else 
	clear
	./menu.sh
fi
