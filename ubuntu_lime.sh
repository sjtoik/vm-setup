#!/bin/bash

sudo add-apt-repository -y ppa:myriadrf/drivers
sudo apt-get update
sudo apt-get install limesuite liblimesuite-dev limesuite-udev limesuite-images
sudo apt-get install soapysdr-module-lms7

sudo cp ubuntu_lime.rules /etc/udev/rules.d/64-limesuite.rules
sudo udevadm control --reload-rules
sudo udevadm trigger
