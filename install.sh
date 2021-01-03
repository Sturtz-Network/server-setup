#! /bin/bash
##FIREWALL
##Downloads apt 1
sudo apt-get install -y perl
sudo apt-get install -y g++
sudo apt-get install -y make
sudo chmod +x install.sh
sudo ./install.sh
#limnoria bot
wall installing limnoria bot
sudo apt-get install  limnoria
#bind and certbot
snap install certbot --classic 
wget https://github.com/joohoi/acme-dns-certbot-joohoi/raw/master/acme-dns-auth.py
chmod +x acme-dns-auth.py
sed -i 's/python/python3/g' acme-dns-auth.py
cat acme-dns-auth.py
sudo mv acme-dns-auth.py /etc/letsencrypt/
apt install bind9 
cd /
mkdir NSCS
cd /NSCS
apt install -y mysql-server mysql-client apache2 php python3 dnsutils php-cli libapache2-mod-php php-cgi php-mysql
apt install -y python apt-show-versions libapt-pkg-perl libauthen-pam-perl libio-pty-perl libnet-ssleay-perl curl
a2enmod php7.4

wall DONE!!!
