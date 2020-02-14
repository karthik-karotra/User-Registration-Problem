#!/bin/bash
shopt -s extglob
echo "Welcome to User Registration Desk"
read -p "Enter first name: " firstName
read -p "Enter last name: " lastName
function validateUser (){
	if [[ $1 =~ $2 ]]
	then
		echo "Valid Name"
	else
		echo "Invalid"
	fi
}
validNamePattern="^[A-Z]{1}[a-z]{2,}$"
validateUser $firstName $validNamePattern
validateUser $lastName $validNamePattern
