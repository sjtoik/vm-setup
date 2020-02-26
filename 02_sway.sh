#!/bin/sh
set -ex

sudo apt update
sudo apt install -y sway swaylock swayidle swaybg i3status

cp -r ./sway ~/.config/

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
