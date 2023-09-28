#!/bin/bash

function_create()
{
read -r -p "
Enter name: " NAME
#-p is anti /
read -r -p "Enter last name: " LASTNAME

read -r -p "Enter phone: " PHONE

read -r -p "Enter mail: " MAIL

NEWCONTACT = $NAME + $LASTNAME + $PHONE + $MAIL
read $CONTACT | grep contact.txt
}

echo "
Menu:
1) Create
2) Search
3) Help "

read -n 1 -r -p "Enter an option: " OPTION

case $OPTION in

 1)
	 function_create
;;

 2)
	# function_search()
	;;
3)
	echo "
On the main menu type [1] for creating a new person
type [2] for searching a new person
any other input is invalid"

	;;

  *)
	echo "
Error: incorrect option, please retry"
;;

esac

