#!/bin/bash

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install patched powerline fonts
curl https://raw.githubusercontent.com/powerline/fonts/master/install.sh | bash

# setup dotfiles
mkdir -p ~/dev
cd ~/dev
git clone git@github.com:balaclark/dotfiles.git
cd dotfiles
./bin/setup

