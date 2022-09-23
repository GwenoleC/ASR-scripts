#!/bin/bash

echo "numéro 0 à 60 = 0€"
echo "numéro 60 à 80 = 20€"
echo "numéro 80 à 99 = 40€"
echo "numéro 100 = 100€"
read -p "Taper sur n'importe quelle touche pour jouer" touche
echo jeu=$(($RANDOM % 100))

case $jeu in

0-59) echo "Vous gagnez 0€" ;;
60-79) echo "Vous gagnez 20€" ;;
80-99) echo "Vous gagnez 40€" ;;
100) echo "Vous gagnez 100€" ;;

esac
