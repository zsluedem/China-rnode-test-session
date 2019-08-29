#!/usr/bin/env bash

#sudo apt-get update
#sudo apt-get install -y software-properties-common
#sudo add-apt-repository -y ppa:openjdk-r/ppa
#sudo apt-get update
#sudo apt-get install -y openjdk-11-jdk
#wget https://github.com/rchain/rchain/releases/download/v0.9.12/rnode-0.9.12.git16d90f43.tgz
#tar zxvf rnode-0.9.12.git16d90f43.tgz
#ln -s $(pwd)/rnode-0.9.12.git16d90f43/bin/rnode /usr/local/bin/rnode
#wget https://raw.githubusercontent.com/zsluedem/China-rnode-test-session/master/%E9%80%9A%E7%94%A8/bonds.txt
#wget https://raw.githubusercontent.com/zsluedem/China-rnode-test-session/master/%E9%80%9A%E7%94%A8/wallets.txt
sudo apt-get -y install make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
curl https://pyenv.run | bash
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc


