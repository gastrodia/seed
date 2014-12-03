sh ./install-node.sh
sudo apt-get install build-essential vim git screen -y
sudo apt-get install docker.io curl -y
git clone https://github.com/NodeOS/NodeOS-Docker.git
cd NodeOS-Docker
./build
