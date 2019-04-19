#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:linuxuprising/java
sudo apt-get update
sudo apt-get install -y oracle-java11-installer
wget https://github.com/rchain/rchain/releases/download/v0.9.3/rnode-0.9.3.git50bae411.tgz
tar zxvf rnode-0.9.3.git50bae411.tgz
ln -s $(pwd)/rnode-0.9.3.git50bae411/bin/rnode /usr/local/sbin/rnode