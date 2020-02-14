#!/bin/bash
shopt -s extglob
echo "Welcome to User Registration Desk"
read -p "Enter first name: " firstName
read -p "Enter last name: " lastName
read -p "Enter email id: " email
read -p "Enter phone number: " phone
read -p "Enter password" password
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
validPhoneNoPattern="^[0-9]{1,3}[[:space:]][0-9]{10}$"
validPasswordPattern="^[a-zA-Z0-9]{8,}"
validateUser "$firstName" $validNamePattern
validateUser "$lastName" $validNamePattern
validateUser "$email" $validEmailPattern
validateUser "$phone" $validPhoneNoPattern
validateUser "$password" $validPasswordPattern




