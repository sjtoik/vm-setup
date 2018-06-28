#!/bin/sh
set -x

# keybase
sudo apt install -y curl
curl -O https://prerelease.keybase.io/keybase_amd64.deb
sudo dpkg -i keybase_amd64.deb
sudo apt-get install -f
run_keybase
rm keybase_amd64.deb

