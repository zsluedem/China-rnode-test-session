#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y openjdk-11-jdk
wget https://github.com/rchain/rchain/releases/download/v0.9.12/rnode-0.9.12.git16d90f43.tgz
tar zxvf rnode-0.9.12.git16d90f43.tgz
ln -s $(pwd)/rnode-0.9.12.git16d90f43/bin/rnode /usr/local/bin/rnode
wget https://raw.githubusercontent.com/zsluedem/China-rnode-test-session/master/%E9%80%9A%E7%94%A8/bonds.txt
wget https://raw.githubusercontent.com/zsluedem/China-rnode-test-session/master/%E9%80%9A%E7%94%A8/wallets.txt

sudo apt install -y python3-pip
sudo pip3 install --upgrade setuptools
sudo pip3 install git+https://github.com/rchain/pyrchain@0075df7c9b70238056ba52f1505b575d2844e1fc
wget https://raw.githubusercontent.com/zsluedem/China-rnode-test-session/master/2019-08-29/cli.py
