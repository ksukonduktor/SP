#!/bin/bash
echo "*******************************************************"
echo "Program for user search"
echo ""
echo "You are able to see the UID of the user and the names of his groups"
echo ""
echo "Developer: Kseniya Kondenko"
echo "*******************************************************"
echo ""
while true
do
	read -p "Please, enter username: " fname
	if test -f "$fname"
	then
		echo "User found: " $fname
                echo " " $id "$fname" "<-- major group"
                echo "ID: "$id
        else
		echo "Error! User not found(" > & 2
		echo ""
		read -p "Continue? (y/n): " answer
		if [[ "$answer" == "Y" || "$answer" == "y" ]]
		then
			continue
		else
			exit 1
		fi
	fi
done
