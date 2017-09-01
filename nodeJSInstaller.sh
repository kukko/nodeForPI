#!/bin/bash

mkdir /home/pi/NodeJS
cd /home/pi/NodeJS
mkdir /home/pi/NodeJS/sites
wget https://nodejs.org/dist/v4.0.0/node-v4.0.0-linux-armv6l.tar.gz
tar -xvf node-v4.0.0-linux-armv6l.tar.gz
cd node-v4.0.0-linux-armv6l
sudo cp -R * /usr/local/
apt-get install pure-ftpd
groupadd ftpgroup
echo "What username do you choose for FTP?"
read username
useradd ftpuser -g ftpgroup -s /sbin/nologin -d /dev/null
chown -R ftpuser:ftpgroup /home/pi/NodeJS/sites
pure-pw useradd $username -u ftpuser -g ftpgroup -d /home/pi/NodeJS/sites -m
pure-pw mkdb
ln -s /etc/pure-ftpd/conf/PureDB /etc/pure-ftpd/auth/42puredb
service pure-ftpd restart