
#!/bin/bash

try=0
chiffre=0
numgagnant=$(($RANDOM % 100))


while [ $try -eq "0" ] && [ $chiffre -ne $numgagnant ]
do
read -p "Taper un chiffre pour essayer de trouver le numéro gagnant : " chiffre


while [ $try -lt "1" ] && [ $chiffre -ne $numgagnant ] && [ $numgagnant -lt "50" ]
do echo "Ce n'est pas le bon numéro! le numéro est inférieur à 50." && try=$((try+1))
read -p "Taper un chiffre pour essayer de trouver le numéro gagnant : " chiffre
done

while [ $try -lt "1" ] && [ $chiffre -ne $numgagnant ] && [ $numgagnant -gt "50" ]
do echo "Ce n'est pas le bon numéro! le numéro est supérieur à 50." && try=$((try+1))
read -p "Taper un chiffre pour essayer de trouver le numéro gagnant : " chiffre
done

while [ $try -eq "2" ] && [ $chiffre -ne $numgagnant ]
do echo "Le numéro se trouve entre $(($numgagnant-10)) et $(($numgagnant+10))"
read -p "Taper un chiffre pour essayer de trouver le numéro gagnant : " chiffre
done

while [ $try -eq "3" ] && [ $chiffre -ne $numgagnant ]
do echo "Le numéro se trouve entre $(($numgagnant-5)) et $(($numgagnant+5))"
read -p "Taper un chiffre pour essayer de trouver le numéro gagnant : " chiffre
done

while [ $try -gt "3" ] && [ $chiffre -ne $numgagnant ]
do echo "Le numéro se trouve entre $(($numgagnant-2)) et $(($numgagnant+2))"
read -p "Taper un chiffre pour essayer de trouver le numéro gagnant : " chiffre
done

done

if [ $chiffre -eq $numgagnant ]
then echo "Vous avez gagné! Le numéro gagnant était le $numgagnant!"
fi
