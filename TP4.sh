#!/bin/bash

read -p "Quel est votre age? " age

if (( "$age" <= "18" )) && (( "$age" > "0" ))
then echo "Vous êtes mineur" && exit 0
elif (( "$age" > "0" )) && (( "$age" < "120" ))
then echo "Vous êtes majeur" && exit 0
else read -p "Vous n'avez pas saisi votre âge. Veuillez saisir votre âge : "
fi
exit 2
