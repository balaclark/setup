#!/bin/bash

sudo apt-get remove -y unity-lens-shopping
sudo apt-get install -y \
  unity-tweak-tool \
  ubuntu-restricted-extras \
  xclip \
  caffeine \
  chromium-browser \
  virtualbox \
  git \
  tig \
  gitg \
  vim-nox \
  zsh \
  tmux

sudo /usr/share/doc/libdvdread4/install-css.sh

sudo apt-get autoremove -y
sudo apt-get install unity-webapps-service

