#!/bin/bash

sudo mkdir -p /usr/local/m
sudo mkdir -p /usr/local/bin/bin
sudo mkdir -p /data/db
sudo chown "$(whoami)" /usr/local/m
sudo chown "$(whoami)" /usr/local/bin/bin
sudo chown "$(whoami)" /data/db
npm install -g m
m stable

