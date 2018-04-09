#!/bin/bash

# got root?
if [ "$(id -u)" != "0" ]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi
set -ex
apt update
apt install vim openvpn tmux
