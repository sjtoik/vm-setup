#!/bin/sh
set -x

# keybase
sudo apt install -y curl
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
sudo apt install -y ./keybase_amd64.deb
run_keybase
rm keybase_amd64.deb

