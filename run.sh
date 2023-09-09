#!/bin/sh

mkdir /opt/iut-pubkey
wget -O /opt/iut-pubkey/update.sh https://raw.githubusercontent.com/itsmrval/iut-pubkey/main/update.sh
chmod +x /opt/iut-pubkey/update.sh
(crontab -u root -l; echo "* * * * * /bin/sh /opt/iut-pubkey/update.sh" ) | crontab -u root -
