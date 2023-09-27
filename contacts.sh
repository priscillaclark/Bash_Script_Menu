#!/bin/bash

echo "
Menu:
1) Create
2) Search
3) Help "

read -n 1 -r -p "Enter an option: " OPTION

case $OPTION in

 1)
	# function_create()
exit 0	
;;

 2)
	# function_search()
exit 0
	;;
3)
	echo "
On the main menu type [1] for creating a new person
type [2] for searching a new person
any other input is invalid"
exit 0

	;;

  *)
	echo "
Error: incorrect option, please retry"

;;
esac

#function_create(){

#}
