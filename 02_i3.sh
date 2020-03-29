#!/bin/bash
set -ex

sudo apt update
sudo apt autoremove -y
sudo apt install -y i3 suckless-tools net-tools

cp -r ./i3 ~/.config/
cp ./i3/.Xresources ~/

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
