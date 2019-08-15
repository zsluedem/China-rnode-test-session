#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y openjdk-11-jdk
wget https://github.com/rchain/rchain/releases/download/v0.9.12/rnode-0.9.12.git16d90f43.tgz
tar zxvf rnode-0.9.12.git16d90f43.tgz
ln -s $(pwd)/rnode-0.9.12.git16d90f43/bin/rnode /usr/local/bin/rnode