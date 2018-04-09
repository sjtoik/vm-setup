#!/bin/bash
if [ "$(id -u)" == "0" ]; then
	echo "This script must be run as regular user" 1>&2
	exit 1
fi

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
