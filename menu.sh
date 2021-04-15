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
	echo $line
}

#Asking the user for his choise
function choosing() {
	echo "Choose option from above:"
	read option
	echo $option
	#TODO: Когато сте готови с вашата част направете връзка между този
	#файл и вашите с if проверка
}

draw_header
draw_body
choosing
