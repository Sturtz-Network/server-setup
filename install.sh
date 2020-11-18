#! /bin/bash
#webmin
wget -O- https://raw.github.com/ajenti/ajenti/1.x/scripts/install-ubuntu.sh | sudo sh
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
wget https://updates.duplicati.com/beta/duplicati_2.0.5.1-1_all.deb
apt install -y ./duplicati_2.0.5.1-1_all.deb
apt install -y mysql-server mysql-client apache2 php python3 dnsutils php-cli libapache2-mod-php php-cgi php-mysql 
a2enmod php7.4
curl -O http://software.virtualmin.com/gpl/scripts/install.sh
sudo chmod +x install.sh
sudo ./install.sh
wall DONE!!!
