#Menu

line="###################################"

#Drawing header part
function draw_header() {
	echo $line
	echo "#         CRYPTO FOLLOWER         #"
	echo $line
}

#Drawing options
function draw_body() {
	echo "#   01.List favorite currencies   #"
	echo "#   02.Find currency              #"
	echo "#   03.Change the favorite        #"
	echo "#      currency list              #"
	echo "#   04.Change currency from       #"
	echo "#      the favorite list          #"
	echo "#   05.Exit                       #"
	echo $line
}

#Asking the user for his choise
function choosing() {
	echo "Choose option from above:"
	read option
	echo $option
        clear
	if [ "$option" == "01" ]
	then 
		./favouriteCrypto.sh
	elif [ "$option" == "02" ]
	then 
		./findCurrency.sh
	elif [ "$option" == "03" ]
	then 
		./replaceAll.sh

	elif [ "$option" == "04" ]
	then 
		./replace.sh
	elif [ "$option" == "05" ]
	then 
		clear

	else 
		clear
		./menu.sh
	fi
}
	
function giving_permission() {
	chmod +x crFollower.sh
	chmod +x favouriteCrypto.sh
	chmod +x findCurrency.sh
	chmod +x replaceAll.sh
	chmod +x replace.sh
}

giving_permission
draw_header
draw_body
choosing
