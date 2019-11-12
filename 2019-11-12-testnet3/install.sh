sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y openjdk-11-jdk
sudo apt-get install python3-pip
pip3 install git+https://github.com/rchain/pyrchain
wget https://github.com/zsluedem/China-rnode-test-session/raw/master/2019-11-12-testnet3/rnode-0.9.16-23-ge8c1050.tgz
tar zxvf rnode-0.9.16-23-ge8c1050.tgz
ln -s $(pwd)/rnode-0.9.16-23-ge8c1050/bin/rnode /usr/local/bin/rnode
wget https://raw.githubusercontent.com/zsluedem/China-rnode-test-session/master/%E9%80%9A%E7%94%A8/bonds.txt
wget https://raw.githubusercontent.com/zsluedem/China-rnode-test-session/master/%E9%80%9A%E7%94%A8/wallets.txt