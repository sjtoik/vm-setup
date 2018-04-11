#!/bin/bash
set -ex

sudo apt update
sudo apt install -y i3

install -d ~/.config/i3
cp ./i3.conf ~/.config/i3/config