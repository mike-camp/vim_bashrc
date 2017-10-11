#!/bin/bash
sudo apt-get install vim-nox-py2
cp .vimrc ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo :PluginInstall | vim
