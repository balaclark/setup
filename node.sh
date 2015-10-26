#!/bin/bash

# Install the latest stable nave
sudo sh -c 'curl -fsSL https://raw.github.com/isaacs/nave/master/nave.sh > /usr/local/bin/nave && chmod ugo+x /usr/local/bin/nave'

sudo nave usemain stable

# install packages without sudo
wget -O- https://raw.githubusercontent.com/glenpike/npm-g_nosudo/master/npm-g-nosudo.sh | sh

npm install -g \
	mocha \
	pliers \
	st \
	json \
	bunyan \
	jscs \
	jshint \
	npmrc \
	html \
	eslint \
	nodemon \
  replace
