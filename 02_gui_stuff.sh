#!/bin/bash
set -ex

sudo apt update
sudo apt autoremove -y
sudo apt install -y i3 suckless-tools net-tools

install -d ~/.config/i3
cp ./i3.conf ~/.config/i3/config
cp ./i3_lockoff.sh ~/.config/i3/
cp ./backgrounds/34C3_Logotype_Plus.png ~/.config/i3/background.png

# backlight control
sudo apt install -y git help2man dh-autoreconf
git clone https://github.com/haikarainen/light
cd light
./autogen.sh
./configure
make
sudo make install
cd ..
rm -fr light
