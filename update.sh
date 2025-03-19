#!/bin/bash
echo
echo -e "[$(date)] Processed update script..."
sleep 1
apt install wget -y
mkdir -p /cache
cd /cache
wget -q -O menu.zip "https://raw.githubusercontent.com/bangjoevpn/bangjoestore/main/Cdy/menu.zip"
unzip menu.zip &>/dev/null
chmod +x menu/*
mv menu/* /usr/local/sbin/
cd
rm -rf /cache
rm -f $0
sleep 2
echo
echo -e "[$(date)] Update script Success"
sleep 0.5
echo -e "[$(date)] Back to menu in 3 seconds"
sleep 3
menu
