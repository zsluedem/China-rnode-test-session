#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:linuxuprising/java
sudo apt-get update
sudo apt-get install oracle-java11-installer
wget https://github.com/rchain/rchain/releases/download/v0.9.2/rnode-0.9.2.git26ad26eb.tgz
tar zxvf rnode-0.9.2.git26ad26eb.tgz
ln -s $(pwd)/rnode-0.9.2.git26ad26eb/bin/rnode /usr/local/sbin/rnode