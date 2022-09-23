#!/bin/bash
read -p "Saisir l'identifiant utilisateur souhaité : " identifiant
echo "GESTION DES UTILISATEURS : $identifiant"
echo "--------------------------"
echo "C - Créer le compte utilisateur"
echo "M - Modifier le mot de passe de l'utilisateur"
echo "S - Supprimer le compte utilisateur"
echo "V - Vérifier si le compte utilisateur existe"
echo ""
echo "Q - quitter"
echo ""
read -p "Votre choix : " choix
case $choix in
    c|C)
        useradd -m -s /usr/bin/bash $identifiant && echo "$identifiant a bien été créé"
        ;;
    m|M)
        passwd $identifiant
        ;;
    s|S)
        read -p "Confirmez-vous la suppression définitive de $identifiant ? (O/n) " confirmation
        if [[ $confirmation = o || -z $confirmation ]] ; then
            userdel --force --remove $identifiant && echo "$identifiant a bien été supprimé"
        else
            echo "Suppression de $identifiant annulée"
        fi
        ;;
    v|V)
        # if id $identifiant ; then
        if grep "^$identifiant:" /etc/passwd ; then
            echo "L'utilisateur $identifiant existe sur le système"
        else
            echo "L'utilisateur $identifiant n'existe pas"
        fi
        ;;
    q|Q)
        exit 0
        ;;
    *)
        echo "cette possibilité n'existe pas"
        exit 2
        ;;
esac
