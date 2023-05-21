#!/bin/bash
sudo apt-get update && apt-get install -y hugo make npm
sudo curl -L -o hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
sudo tar xzf hugo.tar.gz hugo
sudo mv hugo /usr/local/bin/
sudo npm install -g markdownlint-cli
sudo npm install -g markdown-link-check
