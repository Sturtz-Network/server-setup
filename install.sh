#! /bin/bash
##VIRTUALMIN  
wall starting install of virtualmin!
curl -O http://software.virtualmin.com/gpl/scripts/install.sh
sudo chmod +x install.sh
sudo ./install.sh
#limnoria bot
wall installing limnoria bot
sudo apt-get install  limnoria
#bind
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
wget #######NOT DONE############
wall DONE!!!
