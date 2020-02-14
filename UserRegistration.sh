#!/bin/bash
shopt -s extglob
echo "Welcome to User Registration Desk"
read -p "Enter first name: " firstName
read -p "Enter last name: " lastName
read -p "Enter email id: " email
function validateUser (){
	if [[ $1 =~ $2 ]]
	then
		echo "Valid Details"
	else
		echo "Invalid"
	fi
}
validNamePattern="^[A-Z]{1}[a-z]{2,}$"
validEmailPattern="^([a-zA-Z]{3,}([.|_|+|-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"
validateUser "$firstName" $validNamePattern
validateUser "$lastName" $validNamePattern
validateUser "$email" $validEmailPattern
