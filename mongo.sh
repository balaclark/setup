#!/bin/bash

sudo mkdir -p /usr/local/m
sudo chown "$(whoami)" /usr/local/m
npm install -g m
m stable

