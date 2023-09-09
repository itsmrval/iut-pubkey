#!/bin/bash

mkdir /opt/iut-pubkey

PS3='Choisissez le niveau d accès: '
options=("admin" "team" "cancel")
select opt in "${options[@]}"
do
    case $opt in
        "admin")
            echo "utilisation de l'url admin"
            wget -O /opt/iut-pubkey/update.sh https://raw.githubusercontent.com/itsmrval/iut-pubkey/main/update_admin.sh
            break
            ;;
        "team")
            echo "utilisation de l'url team"
            wget -O /opt/iut-pubkey/update.sh https://raw.githubusercontent.com/itsmrval/iut-pubkey/main/update_team.sh
            break

            ;;
        "cancel")
            exit
            ;;
        *) echo "invalide";;
    esac
done

chmod +x /opt/iut-pubkey/update.sh
(crontab -u root -l; echo "* * * * * /bin/sh /opt/iut-pubkey/update.sh" ) | crontab -u root -


