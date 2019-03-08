#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install openjdk-11-jdk -y
wget https://build.rchain-dev.tk/branches/dev/rnode-0.8.4.git550be610.tgz
tar zxvf rnode-0.8.4.git550be610.tgz
ln -s $(pwd)/rnode-0.8.4.git550be610.tgz/bin/rnode /usr/local/sbin/rnode