sudo apt-get install apache2 php5 php5-dev php5-cli -y
cd /var/www
sudo wget http://rock-php.googlecode.com/files/rockmongo-v1.0.11.zip
sudo unzip rockmongo-v1.0.11.zip
sudo apt-get install php-pear
sudo pecl install mongo
sudo echo extension=mongo.so >> /etc/php5/apache2/php.ini
sudo service apache2 restart
