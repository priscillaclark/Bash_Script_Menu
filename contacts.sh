#!/bin/bash

function_create()
{
read -r -p "
Enter name: " NAME
# -p is anti /

# -n checks the string variable is not empty?
# -z checks the string variable is empty

read -r -p  "Enter last name: " LASTNAME

read -r -p  "Enter phone: " PHONE

read -r -p  "Enter mail: " MAIL

NEWCONTACT="$NAME $LASTNAME $PHONE $MAIL"
echo $NEWCONTACT >> contact.txt
echo "Successfully saved"

}

function_search(){

read -r -p "
Enter contact name to search for: " GIVENCONTACT

# check string is not empty 
if [ -z $GIVENCONTACT ]; then
echo "
Please give a contact name"
break;
fi

#check contact file is not empty
if [ ! -s  "contacts.txt" ]; then
# -s checks the size of a file is greater than 0, means it's not empty
echo "
The contact file is empty, please create a contact before searching"
break;
fi
  
#si existe contacto sali devolve contacto encontrado
#no encontre contacto
#while(!(found)||){

#found=true;
#echo "the contact exists";
#}

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
	 function_search
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

