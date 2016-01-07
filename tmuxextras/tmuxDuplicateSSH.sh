#!/bin/bash

tmux last-pane
active_pane_tty=`tmux list-panes -F '#{pane_active} #{pane_tty}' | grep '^1' | awk '{print $2}'`
tmux display-message $active_pane_tty
#ps -t $active_pane_tty | grep ssh
ssh_process=$(ps -t $active_pane_tty | grep 'ssh ' | grep -v 'wl -W' | grep -v grep | awk '{$1=""; $2=""; $3=""; print $0}')
tmux last-pane
tmux send-keys "$ssh_process"
tmux send-keys "clear"
