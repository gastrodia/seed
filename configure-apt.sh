sudo apt-get install axel
wget https://raw.githubusercontent.com/gastrodia/seed/master/apt-fast.sh
sudo cp apt-fast.sh /usr/bin/apt-fast
sudo chmod +x /usr/bin/apt-fast
wget https://raw.githubusercontent.com/gastrodia/seed/master/sources.list
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak 
sudo cp sources.list /etc/apt/sources.list 
sudo apt-fast update
sudo apt-fast upgrade
