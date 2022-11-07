#!/bin/bash

# always start with update and upgrade
sudo apt -y update
sudo apt -y upgrade

# adding gpg to check for postgresSQL repo on official site
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'

# running update
sudo apt -y update

# install pgsql and cont
sudo apt-get install pgsql -y 