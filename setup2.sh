#!/bin/bash

cd ~

echo "" > /data/data/com.termux/files/usr/etc/fish/config.fish
mv -f ~/TerCool/config.fish /data/data/com.termux/files/usr/etc/fish/config.fish
echo "" > ~/.config/fish/functions/fish_prompt.fish
mv -f ~/TerCool/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish

termux-reload-settings

rm -rf ~/TerCool/

cd ~
clear
exec bash
