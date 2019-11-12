sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y openjdk-11-jdk
sudo apt-get install -y python3-pip
sudo apt-get install -y git
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
pip3 install --upgrade setuptools
pip3 install git+https://github.com/rchain/pyrchain@testnet3
wget https://raw.githubusercontent.com/zsluedem/China-rnode-test-session/master/%E9%80%9A%E7%94%A8/cli.py
wget https://github.com/zsluedem/China-rnode-test-session/raw/master/2019-11-12-testnet3/rnode-0.9.16-23-ge8c1050.tgz
tar zxvf rnode-0.9.16-23-ge8c1050.tgz
ln -s $(pwd)/rnode-0.9.16-23-ge8c1050/bin/rnode /usr/local/bin/rnode
wget https://raw.githubusercontent.com/zsluedem/China-rnode-test-session/master/%E9%80%9A%E7%94%A8/bonds.txt
wget https://raw.githubusercontent.com/zsluedem/China-rnode-test-session/master/%E9%80%9A%E7%94%A8/wallets.txt