#!/bin/bash
apt-get update
apt-get install make curl
curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz -o hugo.tar.gz
tar -xvzf hugo.tar.gz
mv hugo /usr/local/bin/
rm 
make build