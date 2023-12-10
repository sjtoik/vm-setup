#!/bin/bash
set -ex

sudo apt update
sudo apt autoremove -y
sudo apt install -y i3 suckless-tools net-tools feh

cp -r ./i3 ~/.config/
cp ./i3/.Xresources ~/
cp ./i3/.xinitrc ~/
