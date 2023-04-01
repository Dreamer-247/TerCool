#!/bin/bash

cd ~

mv -f data/data/com.termux/files/home/TerCool/config.fish /data/data/com.termux/files/usr/etc/fish/config.fish
echo "" > /data/data/com.termux/files/home/.config/fish/functions/fish_prompt.fish
mv -f /data/data/com.termux/files/home/TerCool/fish_prompt.fish /data/data/com.termux/files/home/.config/fish/functions/fish_prompt.fish

termux-reload-settings
clear
