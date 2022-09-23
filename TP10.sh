#!/bin/bash

try=0
chiffre=0
numgagnant=$(($RANDOM % 100))


while [ $chiffre -ne $numgagnant ]
do
read -p "Taper un chiffre pour essayer de trouver le numéro gagnant : " chiffre
try=$((try+1))

if [ $try -eq "1" ] && [ $chiffre -ne $numgagnant ] && [ $numgagnant -lt "50" ]
then echo "Ce n'est pas le bon numéro! le numéro est inférieur à 50."

elif [ $try -eq "1" ] && [ $chiffre -ne $numgagnant ] && [ $numgagnant -gt "50" ]
then echo "Ce n'est pas le bon numéro! le numéro est supérieur à 50."

elif [ $try -eq "2" ] && [ $chiffre -ne $numgagnant ]
then echo "Le numéro se trouve entre $(($numgagnant-10)) et $(($numgagnant+10))"

elif [ $try -eq "3" ] && [ $chiffre -ne $numgagnant ]
then echo "Le numéro se trouve entre $(($numgagnant-5)) et $(($numgagnant+5))"

elif [ $try -gt "3" ] && [ $chiffre -ne $numgagnant ]
then echo "Le numéro se trouve entre $(($numgagnant-2)) et $(($numgagnant+2))"

fi

done

if [ $chiffre -eq $numgagnant ]
then echo "Vous avez gagné! Le numéro gagnant était le $numgagnant!"
fi
