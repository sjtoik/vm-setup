#!/bin/bash
set -ex
sudo apt update
sudo apt install -y vim tmux git python3 python3-pip
sudo apt autoremove -y

# fish
sudo apt install -y fish
cp -r ./fish ~/.config/

# tmux config
cat <<EOF > ~/.tmux.conf
echo "set -g status-right '#[fg=yellow]#(uptime | cut -d "," -f -2)'

# Use ctrl-a
set-option -g prefix C-a
bind-key C-a last-window

# Set status bar
set -g status-bg black
set -g status-fg white
set -g status-left '#[fg=green]#H'

set-option -g default-shell '/usr/bin/fish'
EOF

# git config
git config --global user.email "santeri.toikka@iki.fi"
git config --global user.name "Santeri Toikka"
git config --global push.default simple
git config --global init.defaultBranch main

# vim config
cat <<EOF > ~/.vimrc
set background=dark
syntax on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
EOF
