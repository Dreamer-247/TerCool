#!/bin/bash

cd ~

#Installing_fish
pkg install fish -y

#removing_motd
cd /data/data/com.termux/files/usr/etc
rm motd motd-playstore

#Updating_bash.bashrc
echo -e "fish" >> /data/data/com.termux/files/usr/etc/bash.bashrc

cd ~

#Applying_changes
source /data/data/com.termux/files/usr/etc/bash.bashrc
