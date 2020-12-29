#!/bin/bash/

wget --trust-server-names https://www.unrealircd.org/downloads/unrealircd-latest.tar.gz
tar -xvf 5.0.7.tar.gz
cd unrealircd-5.0.7
wall I.T. needed, URGENT I.T. NEEDED
./Config
make
make install
cd ~/unrealircd
cp conf/examples/example.conf conf/unrealircd.conf

wall IRC server installed NEED TO CONFIG https://ubuntu.com/tutorials/irc-server#6-server-configuration
