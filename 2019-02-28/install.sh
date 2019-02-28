#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install openjdk-11-jdk -y
wget https://build.rchain-dev.tk/branches/dev/rnode-0.8.3.git57ae9723.tgz
tar zxvf rnode-0.8.3.git57ae9723.tgz
ln -s $(pwd)/rnode-0.8.3.git57ae9723.tgz/bin/rnode /usr/bin/rnode