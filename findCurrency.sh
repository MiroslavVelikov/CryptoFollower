#Finding currency in coincapmarket

echo "What crypto currency to find from CoinCapMarket?"
read input
name="name.txt"
echo $input | tr "[A-Z]" "[a-z]" | tr " " "-" > $name
clear
./crFollower.sh $(cat $name)
cat output.txt 
echo "Do you want to make another search?[Y/N]"
read answer
if [ "$answer" == "Y" ]
then 
	clear
	./findCurrency.sh
else 
	clear
	./menu.sh
fi
