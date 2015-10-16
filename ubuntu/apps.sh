#!/bin/bash

sudo apt-get remove -y unity-lens-shopping unity-webapps-common
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
  meld \
  vim-nox \
  zsh \
  tmux \
  htop \
  glances \
  silversearcher-ag \
  ppa-purge \
  redshift-gtk

sudo /usr/share/doc/libdvdread4/install-css.sh

sudo apt-get autoremove -y
sudo apt-get install unity-webapps-service

# scudcloud (slack)
sudo apt-add-repository -y ppa:rael-gc/scudcloud
sudo apt-get update
sudo apt-get install -y scudcloud
#sudo dpkg-divert --add --rename --divert /opt/scudcloud/resources/scudcloud.png.real /opt/scudcloud/resources/scudcloud.png
#sudo cp ~/scudcloud.png /opt/scudcloud/resources/
#sudo chmod +r /opt/scudcloud/resources/scudcloud.png

# lollypop (music)
sudo add-apt-repository ppa:gnumdk/lollypop
sudo apt-get update
sudo apt-get install -y lollypop
