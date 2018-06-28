#!/bin/bash
set -ex

sudo apt update
sudo apt install -y i3 suckless-tools chromium chromium-browser

install -d ~/.config/i3
cp ./i3.conf ~/.config/i3/config

# backlight control
sudo apt install -y git help2man
git clone https://github.com/haikarainen/light
cd light
make
sudo make install
cd ..
rm -fr light
