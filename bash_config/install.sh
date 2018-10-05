#!/bin/bash
sudo apt install git tmux

ln -fs ~/.myConfig/tmux_config/tmux_conf ~/.tmux.conf
#tmux source-file ~/.tmux.conf
git clone https://github.com/Bash-it/bash-it.git ~/.bash-it
sudo apt install autojump
source ~/.bashrc
bash-it enable plugins autojump

