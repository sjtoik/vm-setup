#!/bin/bash
set -ex
sudo apt update
sudo apt install -y vim tmux git

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
" >> ~/.tmux.conf 

# git config
git config --global user.email "586403+sjtoik@users.noreply.github.com"
git config --global user.name "Santeri Toikka"
git config --global push.default simple

# vim config
echo "set background=dark
" >> ~/.vimrc

