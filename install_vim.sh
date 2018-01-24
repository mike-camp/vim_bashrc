#!/bin/bash
sudo apt-get install vim-nox-py2
cp .vimrc ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo :PluginInstall | vim
echo :BundleInstall | vim

sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
cd ~/.vim/bundle/YouCompleteMe
python install.py
