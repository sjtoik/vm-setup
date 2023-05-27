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