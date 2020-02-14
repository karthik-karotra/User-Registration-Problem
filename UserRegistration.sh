#!/bin/bash -x
shopt -s extglob
echo "Welcome to User Registration Desk"
read -p "Enter first name: " firstName

function validateUser (){
	if [[ $1 =~ $2 ]]
	then
		echo "Valid First Name"
	else
		echo "Invalid"
	fi
}
validNamePattern="^[A-Z]{1}[a-z]{2,}$"
validateUser $firstName $validNamePattern
