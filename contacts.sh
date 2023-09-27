#!/bin/bash

echo "
Menu:
1) Create
2) Search
3) Help "

read -p "Enter an option: " OPTION

case $OPTION in

 1)
	echo function_create()
	;;

 2)
	echo function_search()
	;;
3)
	echo function_help()
	;;
  *)
	echo "Error: you have not entered a correct option, press any key to return to the menu"
	;;
esac

