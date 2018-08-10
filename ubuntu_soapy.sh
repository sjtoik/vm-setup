sudo add-apt-repository -y ppa:pothosware/framework
sudo add-apt-repository -y ppa:pothosware/support
sudo add-apt-repository -y ppa:myriadrf/drivers
sudo add-apt-repository -y ppa:bladerf/bladerf
sudo add-apt-repository -y ppa:ettusresearch/uhd

sudo apt-get update
sudo apt-get install -y pothos-all python3-pothos
sudo apt-get install -y pothos-python-dev

#soapy sdr runtime and utilities
sudo apt-get install soapysdr-tools
sudo apt-get install python3-soapysdr python3-numpy

#print information about the install
PothosUtil --system-info
SoapySDRUtil --info

