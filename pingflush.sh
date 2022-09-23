#!/bin/bash

echo "Taper 1 pour pinger une adresse"
echo "Taper 2 pour vider le cache DNS"
echo "Taper 3 pour afficher l'adresse IP de la machine"
read choix

case $choix in

1) read -p "Taper l'adresse IP à pinger : " adresse && ping $adresse -c 4
exit 0
;;

2) sudo /etc/init.d/named restart
exit 0
;;

3) ip a
exit 0
;;

*) echo "cette possibilité n'existe pas"
exit 2
;;
esac
