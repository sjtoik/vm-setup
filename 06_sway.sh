#!/bin/sh
set -ex

sudo add-apt-repository -y ppa:samoilov-lex/sway
sudo apt update
sudo apt install sway swaylock swayidle swaybg rofi

cp -r ./sway ~/.config/

install -d ~/.config/rofi
cp ./rofi.conf ~/.config/rofi/config

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
