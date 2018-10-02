#!/bin/bash

#mkdir ~/.vim 2> /dev/null
mkdir -p ~/.vim/autoload 2> /dev/null
mkdir -p ~/.vim/plugged 2> /dev/null

ln -si ~/.myConfig/vim_config/vimrc ~/.vim/vimrc
ln -si ~/.myConfig/vim_config/gvimrc ~/.vim/gvimrc
ln -si ~/.myConfig/vim_config/ycm_extra_conf.py ~/.vim/ycm_extra_conf.py

#echo $?
sudo apt install git build-essential cmake python-dev python3-dev
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug
ln -sf ~/.vim/plugged/vim-plug/plug.vim ~/.vim/autoload/plug.vim

#git clone --recursive https://github.com/Valloric/YouCompleteMe.git ~/.vim/plugged/YouCompleteMe
vim +PlugInstall +qall

#YouCompleteMe
if [ -d ~/.vim/bundle/YouCompleteMe ]; then
    cd ~/.vim/bundle/YouCompleteMe
    python3 install.py --go-completer --clang-completer #--system-libclang
else
    echo "YouCompleteMe Fail"
fi

#vim-go
#vim +GoInstallBinaries

