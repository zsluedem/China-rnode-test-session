#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install openjdk-11-jdk -y
wget https://github.com/rchain/rchain/releases/download/v0.8.3/rnode-0.8.3.tgz
tar zxvf rnode-0.8.3.tgz
ln -s $(pwd)/rnode-0.8.3/bin/rnode /usr/bin/rnode