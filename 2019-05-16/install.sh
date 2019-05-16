#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:linuxuprising/java
sudo apt-get update
sudo apt-get install -y oracle-java11-installer
wget https://github.com/rchain/rchain/releases/download/v0.9.4/rnode-0.9.4.git19cd019e.tgz
tar zxvf rnode-0.9.4.git19cd019e.tgz
ln -s $(pwd)/rnode-0.9.4.git19cd019e/bin/rnode /usr/local/sbin/rnode