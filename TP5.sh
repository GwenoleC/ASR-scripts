#!/bin/bash

note=0

echo "Qui suis-je ?"
echo "1 - Ramdhan"
echo "2 - Nicolas"
echo "3 - Imed"
echo "4 - Paul"

read -p "Votre choix : " choix
if [ "$choix" -eq "3" ]
then echo "Bonne réponse!" && note=$(( note + 1 ))
else echo "Mauvaise réponse..."
fi

echo "Qui suis-je ?"
echo "1 - Ramdhan"
echo "2 - Nicolas"
echo "3 - Imed"
echo "4 - Paul"

read -p "Votre choix : " choix
if [ "$choix" -eq "3" ]
then echo "Bonne réponse!" && note=$(( note + 1 ))
else echo "Mauvaise réponse..."
fi

echo "Qui suis-je ?"
echo "1 - Ramdhan"
echo "2 - Nicolas"
echo "3 - Imed"
echo "4 - Paul"

read -p "Votre choix : " choix
if [ "$choix" -eq "3" ]
then echo "Bonne réponse!" && note=$(( note + 1 ))
else echo "Mauvaise réponse..."
fi

echo "Qui suis-je ?"
echo "1 - Ramdhan"
echo "2 - Nicolas"
echo "3 - Imed"
echo "4 - Paul"

read -p "Votre choix : " choix
if [ "$choix" -eq "3" ]
then echo "Bonne réponse!" && note=$(( note + 1 ))
else echo "Mauvaise réponse..."
fi

echo "Qui suis-je ?"
echo "1 - Ramdhan"
echo "2 - Nicolas"
echo "3 - Imed"
echo "4 - Paul"

read -p "Votre choix : " choix
if [ "$choix" -eq "3" ]
then echo "Bonne réponse!" && note=$(( note + 1 ))
else echo "Mauvaise réponse..."
fi

echo Votre note est $note/5
