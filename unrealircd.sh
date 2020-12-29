#!/bin/bash/
cd ~

wget https://github.com/inspircd/inspircd/archive/v3.8.1.tar.gz
tar -xvf v3.8.1.tar.gz
cd inspircd-3.8.1
perl ./configure
make
make install
wall IRC server installed NEED TO CONFIG https://ubuntu.com/tutorials/irc-server#6-server-configuration
