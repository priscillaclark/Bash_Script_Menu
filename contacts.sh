#!/bin/bash

echo "
Menu:
1) Create
2) Search
3) Help "

read -p "Enter an option: " OPTION

case $OPTION in

 1)
	# function_create()
	;;

 2)
	# function_search()
	;;
3)
	# function_help()
	;;
  *)
	echo "Error: you have not entered a correct option, press any key to return to the menu"
#function_back()	
;;
esac

