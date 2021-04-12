#web scraping cryptocurrency prices

if [ $# -ne 1 ]; then
	echo "Usage $(basename $0) 'Cryptocurrency Name'"
	exit -1
fi

curl=$(which curl)
outfile="output.txt"
name=$(echo $1)
url="https://coinmarketcap.com/currencies/$name/"

#dump webpage
function dump_webpage() {
	$curl -so $outfile $url
}

#clean the webpage
function script_html() {
	grep -Po '<div class="priceValue___11gHJ">\$[0-9,.]+' $outfile > temp.txt && cp temp.txt $outfile
	price=$(echo $(cat $outfile) | grep -Po '^.{32}\K.*')
}

#printing the result of the filters
function result() {
	echo "${name} - ${price}"
}

#Calling funtions#

dump_webpage
script_html
result

#END
