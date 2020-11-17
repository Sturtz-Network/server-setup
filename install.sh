#! /bin/bash
#webmin
echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
wget -q -O- http://www.webmin.com/jcameron-key.asc | sudo apt-key add
sudo apt update
sudo apt install webmin
#bind
apt install bind9
cd /
mkdir NSCS
cd /NSCS
wget https://updates.duplicati.com/beta/duplicati_2.0.5.1-1_all.deb
apt install -y ./duplicati_2.0.5.1-1_all.deb
apt install -y mysql-server mysql-client apache2 php 
curl -O http://software.virtualmin.com/gpl/scripts/install.sh
sudo chmod +x install.sh
mysql <  nextcloud.sql

sudo ./install.sh
chown -R www-data:www-data /data
wall DONE!!!
