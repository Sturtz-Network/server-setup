#! /bin/bash
cd /
mkdir NSCS
cd /NSCS
sudo apt update
sudo apt install apache2 mariadb-server libapache2-mod-php7.4 tree unzip zip bind9 mlocate -y
sudo apt install php7.4-gd php7.4-mysql php7.4-curl php7.4-mbstring php7.4-intl -y
sudo apt install php7.4-gmp php7.4-bcmath php-imagick php7.4-xml php7.4-zip -y
wget https://raw.githubusercontent.com/Sturtz-Network/server-setup/master/nextcloud.sql
mysql < nextcloud.sql
cd /var/www/
wget https://download.nextcloud.com/server/releases/nextcloud-19.0.1.zip
unzip nextcloud-19.0.1.zip
chown -R www-data:www-data *
cd /
chown -R www-data:www-data data
bash <(curl -Ss https://my-netdata.io/kickstart.sh) --stable-channel --disable-telemetry
sudo chown -R www-data:www-data /var/www/nextcloud/
sudo -u www-data php occ  maintenance:install --database "mysql" --database-name "nextcloud"  --database-user "username" --database-pass "password" --admin-user "admin" --admin-pass "password" --data-dir="/data"
sudo snap install --classic certbot
cd /NSCS
rm nextcloud.sql
