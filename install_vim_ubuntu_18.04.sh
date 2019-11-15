# !/bin/bash
# save current dir
install_dir=$PWD

# uninstall old vim
sudo apt install libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev lua5.1 liblua5.1-dev libperl-dev git
sudo apt uninstall vim
sudo apt remove vim vim-runtime gvim
sudo apt remove vim-tiny vim-common vim-gui-common vim-nox

#install vim
cd ~
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge             --enable-multibyte     --enable-rubyinterp=yes     --enable-pythoninterp=yes     --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/     --enable-perlinterp=yes     --enable-luainterp=yes             --enable-gui=gtk2             --enable-cscope    --prefix=/usr/local
make VIMRUNTIMEDIR=/usr/local/share/vim/vim81

sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim
sudo make install

# dont overwrite vim installation
sudo apt-mark hold vim
sudo apt-mark hold vim-common
sudo apt-mark hold vim-runtime

#install libraries
cd $install_dir
cp .vimrc ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo :PluginInstall | vim
echo :BundleInstall | vim

conda install libgcc=5.2.0
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
cd ~/.vim/bundle/YouCompleteMe
python install.py
