#!/bin/bash

function_create() {
	read -r -p "
Enter name: " name
	# -p is anti /

	# -n checks the string variable is not empty?
	# -z checks the string variable is empty

	read -r -p "Enter last name: " lastname

	read -r -p "Enter phone: " phone

	read -r -p "Enter mail: " mail

	newcontact="$name $lastname $phone $mail"
	echo "$newcontact" >>contact.txt
	echo "Successfully saved"

}

function_search() {

contacts_file="contacts.txt"

	read -r -p "
Enter contact name to search for: " givencontact

#fix this so that user can sear for kewwords not only name

	# check string is empty
	if [ -z "$givencontact" ]; then
		echo "
Please give a contact name"
	#check contact file is not empty
	elif [ ! -s contact.txt ]; then
		# -s checks the size of a file is greater than 0, means it's not empty
		echo "
The contact file is empty, please create a contact before searching"

#why cant i put the regular expression directly on the elif who knows
found=$(grep -i "$givencontact" "$contacts_file")
#-i to ignore case sensitivity
	elif [ -n "$found" ]; then
#-n check not empty
		
		echo "
Contact found:"
		echo "$found"
	else
		echo "
Contact not found"

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
