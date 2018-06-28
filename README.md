# Setup prefered tooling
Works with Debian 10 (buster), Ubuntu 18.2 LTS and Kali.

```
# get root
apt update 
apt install -y git sudo
usermod -a -G sudo $USERNAME && su - $USERNAME
git clone git@github.com:sjtoik/vm-setup.git
```
