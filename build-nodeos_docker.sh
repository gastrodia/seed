sh ./install-node.sh
sudo apt-get install build-essential vim git screen -y
sudo apt-get install docker.io curl -y
sudo apt-get install lib*-dev -y
sudo apt-get install libv4l-dev -y

#fix a bug
cp /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 /lib/x86_64-linux-gnu/ld-linux.so.2
git clone https://github.com/NodeOS/NodeOS.git
cd NodeOS
./build


#configure: error: Building GCC requires GMP 4.2+, MPFR 2.4.0+ and MPC 0.8.0+.
#Try the --with-gmp, --with-mpfr and/or --with-mpc options to specify
sudo apt-get install libgmp* -y
sudo apt-get install libmpfr* -y
sudo apt-get install libmpc* -y

apt-get install libmpc-dev

sudo -i
cd /etc/apt/sources.list.d
echo "deb http://old-releases.ubuntu.com/ubuntu/ raring main restricted universe multiverse" >ia32-libs-raring.list
apt-get update
apt-get install ia32-libs



#
git clone https://github.com/NodeOS/NodeOS.git
cd NodeOS
./build

#


curl -O http://www.mirrorservice.org/sites/ftp.gnu.org/gnu/gmp/gmp-5.0.1.tar.gz
tar zxf gmp-5.0.1.tar.gz
cd gmp-5.0.1/
./configure --prefix=/usr/lib
sudo make install
cd ..

curl -O http://www.mpfr.org/mpfr-current/mpfr-3.0.0.tar.gz
tar zxf mpfr-3.0.0.tar.gz
cd mpfr-3.0.0/
./configure --prefix=/usr/lib
sudo make install
cd ..

curl -O http://www.multiprecision.org/mpc/download/mpc-0.8.2.tar.gz
tar zxf mpc-0.8.2.tar.gz
cd mpc-0.8.2/
./configure --prefix=/usr/lib
sudo make install
