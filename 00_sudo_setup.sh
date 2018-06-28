#!/bin/bash
if [[ $EUID -ne 0 ]]; then
	echo 'This script must be run as root'
	exit -1
fi

set -ex
apt install sudo && usermod -a -G sudo $USERNAME && su - $USERNAME
