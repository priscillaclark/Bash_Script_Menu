#!/bin/bash

function_create() {
	read -r -p "
Enter name: " NAME
	# -p is anti /

	# -n checks the string variable is not empty?
	# -z checks the string variable is empty

	read -r -p "Enter last name: " LASTNAME

	read -r -p "Enter phone: " PHONE

	read -r -p "Enter mail: " MAIL

	NEWCONTACT="$NAME $LASTNAME $PHONE $MAIL"
	echo "$NEWCONTACT" >>contact.txt
	echo "Successfully saved"

}

function_search() {

	read -r -p "
Enter contact name to search for: " GIVENCONTACT

	# check string is not empty
	if [[ -z "$GIVENCONTACT" ]]; then
		echo "
Please give a contact name"
	#check contact file is not empty
	elif [[ ! -s contact.txt ]]; then
		# -s checks the size of a file is greater than 0, means it's not empty
		echo "
The contact file is empty, please create a contact before searching"
	else
		echo "
Lore ipsum"i

	#si existe contacto sali devolve contacto encontrado
	#no encontre contacto
	#while(!(found)||){

	#found=true;
	#echo "the contact exists";
	#}

	fi
}

while true; do

	# Display Menu
	echo "Menu Options:"
	echo "1) Create"
	echo "2) Search"
	echo "3) Help"
	echo "4) Exit"

	# Ask the User the option input
	read -n 1 -r -p "Enter an option: " option

	case $option in

	1)
		function_create
		;;

	2)
		function_search
		;;
	3)
		echo "
	On the main menu type [1] for creating a new contact
	type [2] for searching a new contact
	any other input is invalid"

		;;
	4)
		echo "Exiting the script"
		exit 0
		;;

	*)
		echo "
	Error: incorrect option, please retry"
		;;
	esac

done
