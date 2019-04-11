#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install openjdk-11-jdk -y
wget https://github.com/rchain/rchain/releases/download/v0.9.2/rnode-0.9.2.git26ad26eb.tgz
tar zxvf rnode-0.9.2.git26ad26eb.tgz
ln -s $(pwd)/rnode-0.9.2.git26ad26eb.tgz/bin/rnode /usr/local/sbin/rnode