sudo apt-get install axel
sudo cp apt-fast.sh /usr/bin/apt-fast
sudo chmod +x apt-fast
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak 
sudo cp sources.list /etc/apt/sources.list 
sudo apt-fast update
sudo apt-fast upgrade
