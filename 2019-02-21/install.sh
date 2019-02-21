#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install openjdk-11-jdk -y
wget https://github.com/zsluedem/China-rnode-test-session/raw/master/2019-02-21/rnode-0.8.3.git7203833c.tgz
tar zxvf rnode-0.8.3.git7203833c.tgz
ln -s $(pwd)/rnode-0.8.3.git7203833c/bin/rnode /usr/bin/rnode