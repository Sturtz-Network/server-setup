#!/bin/bash/
wget --trust-server-names https://www.unrealircd.org/downloads/unrealircd-latest.tar.gz
tar -xvf unrealircd-5.0.X.tar.gz
cd unrealircd-5.0.X
./Config
make
make install
cd ~/unrealircd
cp conf/examples/example.conf conf/unrealircd.conf
