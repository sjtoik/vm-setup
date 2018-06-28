# Setup prefered tooling
Works with Debian 10 netinstall and Kali.

```
# get root
apt update 
apt install -y git sudo && git clone https://github.com/sjtoik/vm-setup.git
usermod -a -G sudo $USERNAME && su - $USERNAME
```
