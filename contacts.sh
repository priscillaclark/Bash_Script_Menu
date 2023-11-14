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

	contacts_file="contact.txt"
	found=""

	read -r -p "
Enter contact name or keyword to search for: " givencontact

		# checks if length of string is zero
	if [ -z "$givencontact" ]; then
		echo "
Please provide a contact name or a keyword"

		# -e check if file exists
	elif [ ! -e "$contacts_file" ]; then
		echo "
The contact file does not exist, please create a contact before searching"

	else
		# -i to ignore case sensitivity
		# -E to enable extended regular expressions

		found=$(grep -iE "$givencontact" "$contacts_file")

	if [ -n "$found" ]; then
		#-n check not empty

		echo "
Contact found:"
		echo "$found"
	else
		echo "
No contact was found for '$givencontact'"

	fi
	
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
