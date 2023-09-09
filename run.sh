#!/bin/sh

mkdir /opt/iut-pubkey
wget -O /opt/iut-pubkey/update.sh https://github.com/itsmrval/iut-pubkey/blob/main/update.sh
chmod +x /opt/iut-pubkey/update.sh
(crontab -u root -l; echo "* * * * * /bin/sh /opt/iut-pubkey/update.sh" ) | crontab -u root -
