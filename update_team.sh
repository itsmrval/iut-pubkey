#!/usr/bin/env sh
curl -o "/root/.ssh/authorized_keys" -z "/root/.ssh/authorized_keys" "https://raw.githubusercontent.com/itsmrval/iut-pubkey/main/team_keys"
