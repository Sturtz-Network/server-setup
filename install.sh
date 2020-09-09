#! /bin/bash
cd /
mkdir NSCS
cd /NSCS
apt install -y mysql-server mysql-client
curl -O http://software.virtualmin.com/gpl/scripts/install.sh
sudo chmod +x install.sh
sudo ./install.sh
apt install tasksel php -y
tasksel
chown -R www-data:www-data /data
wall DONE!!!
