#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Stop if something fails
set -e

# /usr/local/bin doesn't exist on a fresh install
if [ ! -d "/usr/local/bin" ]; then
  sudo mkdir -p /usr/local/bin
fi

# Is xcode needed?
if [ -x "$(xcode-select --print-path)" ]; then
    echo Skipping xcode
else
  echo Installing Xcode CLI tools
  # Download and Install Command Line Tools for Xcode - https://developer.apple.com/downloads/download.action?path=Developer_Tools/command_line_tools_os_x_mountain_lion_for_xcode__april_2013/xcode462_cltools_10_86938259a.dmg
  curl -O https://dl.dropboxusercontent.com/u/4119997/Setup/xcode462_cltools_10_86938259a.dmg && open xcode462_cltools_10_86938259a.dmg

  # Install Xcode
  # https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12

  echo "Press enter once Command Line Tools for Xcode are installed"
  read
fi

# Accept the Xcode licence
sudo xcodebuild -license

# Is brew needed?
if [ -x "$(which brew)" ]; then
  echo Skipping brew
else
  echo Installing brew
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install ZeroMQ
brew install pkg-config
brew install zeromq

# Install zsh and pretzo
brew install zsh
$DIR/../zsh.sh

# Install a bunch of useful tools
brew install \
  wget \
  mtr \
  iftop \
  pv \
  tmux \
  htop-osx \
  hub \
  git \
  tig \
  reattach-to-user-namespace \
  the_silver_searcher \
  memcached \
  python python3

pip install httpie

# Override system vim
brew install vim --override-system-vi --with-lua
hash -r

# Install gui apps
brew tap phinze/homebrew-cask
brew install brew-cask

brew cask install \
  slack \
  tunnelblick \
  google-chrome \
  firefox \
  opera \
  flux \
  keepingyouawake \
  virtualbox \
  robomongo \
  spectacle \
  transmission \
  catch \
  the-unarchiver \
  cyberduck \
  dropbox \
  alfred \
  libreoffice \
  mplayerx \
  vlc \
  appcleaner \
  seil \
  sequel-pro \
  chitchat \

# Nodejs
if [ -x "$(which node)" ]; then
  echo Skipping Nodejs
else
  echo Installing Nodejs
  $DIR/../node.sh
fi

# Is MongoDB needed?
if [ -x "$(which mongo)" ]; then
  echo Skipping MongoDB
else
  echo Installing MongoDB
  $DIR/../mongo.sh
fi

# X11
# TODO check installed first before installing again
echo Installing X11
cd /tmp
wget http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.8.dmg
hdiutil attach XQuartz-2.7.8.dmg
open /Volumes/XQuartz-2.7.8/XQuartz.pkg
read -p "Follow the GUI installation and press any key when the installation has completed." -n 1
hdiutil detach /Volumes/XQuartz-2.7.8

$DIR/../dotfiles.sh
