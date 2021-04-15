#web scraping cryptocurrency prices

if [ $# -ne 1 ]; then
	echo "Usage $(basename $0) 'Cryptocurrency Name'"
	exit -1
fi

curl=$(which curl)
outfile="output.txt"
all_values="values.txt"
name=$(echo $1)
url="https://coinmarketcap.com/currencies/$name/"
array=""

#dump webpage
function dump_webpage() {
	$curl -so $outfile $url
	grep -o '<tbody><.*</table' $outfile | grep -o '>\$[0-9.,\-]*' | tr '>' ' ' > $all_values
	cat $all_values | tr ' ' '_' > temp.txt && cp temp.txt $all_values
	readarray -td_  array <<< $(cat $all_values);
}

#clean the webpage
function script_html() {
	grep -Po '<div class="priceValue___11gHJ">\$[0-9,.]+' $outfile > temp.txt && cp temp.txt $outfile
}

#printing the result of the filters inside output.txt
function result() {
	currency_name="Currency: ${name}\n"
	price="Price: ${array[1]}"
	price_change="Price change: ${array[2]}"
	min_price_24h="Min price for the last 24h: ${array[3]}"
	max_price_24h="Max price for the last 24h: ${array[4]}"
	echo -e "${currency_name}""${price}""${price_change}""${min_price_24h}""${max_price_24h}" > output.txt
}

#Calling funtions#

dump_webpage
script_html
result

#END
