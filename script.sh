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
	read -p "Please, enter username: " fname # read ñ÷èòûâàåò îäíó ñòðîêó äàííûõ; -p ,â íåé âûâîäÿò ïîäñêàçêó, ïåðåä òåì êàê êîìàíäà read áóäåò ñ÷èòûâàòü äàííûå. 
	if grep -c "$fname" /etc/passwd >/dev/null
	then
		echo "User found: " $fname
                echo " " $id "$fname" "<-- major group"
                echo "ID: "
                ID=$(grep "$fname" /etc/passwd | tr : "\n" | head -3 | tail -1);
                echo "$ID"
                echo "Groups: "
                id "$ID" -Gn
				read -p "Continue? (y/n): " answer
				if [[ "$answer" == "Y" || "$answer" == "y" ]] #ñèìâîë âåðòèêàëüíîé ÷åðòû èñïîëüçóåòñÿ äëÿ ðàçäåëåíèÿ îòäåëüíûõ êîìàíä â êîìàíäíîé ñòðîêå
				then
					continue
				else
					exit 1
				fi

	else
		echo "Error! User not foun(" >&2
		echo ""
	fi
done