#!/bin/bash

# Install the latest stable nave
sudo sh -c 'curl -fsSL https://raw.github.com/isaacs/nave/master/nave.sh > /usr/local/bin/nave && chmod ugo+x /usr/local/bin/nave'

sudo nave usemain stable

npm install -g jscs jshint eslint mocha gulp

