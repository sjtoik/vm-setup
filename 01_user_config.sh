#!/bin/bash
set -ex
sudo apt update
sudo apt install -y vim tmux git openvpn python3 python3-pip 
sudo apt autoremove -y

# powerline for fish
sudo apt install -y fish
pip3 install -y powerline-status

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
install -d ~/.local/share/fonts/
install -d ~/.config/fontconfig/conf.d/
mv PowerlineSymbols.otf ~/.local/share/fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

fc-cache -vf ~/.local/share/fonts/
cp -r ./fish ~/.config/

# tmux config
set -ex
echo "set -g status-right '#[fg=yellow]#(uptime | cut -d "," -f -2)' 

# Use ctrl-a
set-option -g prefix C-a
bind-key C-a last-window

# Set status bar
set -g status-bg black
set -g status-fg white
set -g status-left '#[fg=green]#H'

set-option -g default-shell '/usr/bin/fish'
" >> ~/.tmux.conf 

# git config
git config --global user.email "586403+sjtoik@users.noreply.github.com"
git config --global user.name "Santeri Toikka"
git config --global push.default simple

# vim config
echo "set background=dark
" >> ~/.vimrc
