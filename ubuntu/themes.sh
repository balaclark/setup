#!/bin/bash

# Numix theme
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install -y numix-*

gsettings set org.gnome.desktop.interface gtk-theme "Numix"
gsettings set org.gnome.desktop.wm.preferences theme "Numix"
gsettings set org.gnome.desktop.interface icon-theme "Numix-circle"

# Fonts
sudo apt-get install -y fonts-inconsolata
