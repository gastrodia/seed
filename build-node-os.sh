#gcc编译依赖
wget ftp://gcc.gnu.org/pub/gcc/infrastructure/gmp-4.3.2.tar.bz2
tar jxvf gmp-4.3.2.tar.bz2
cd gmp-4.3.2
./configure 
make -j 8
make check
sudo make install
cd ..

wget ftp://gcc.gnu.org/pub/gcc/infrastructure/mpfr-2.4.2.tar.bz2
tar jxvf mpfr-2.4.2.tar.bz2
cd mpfr-2.4.2
./configure
make -j 8
make check
sudo make install
cd ..

wget ftp://gcc.gnu.org/pub/gcc/infrastructure/mpc-0.8.1.tar.gz
tar zxvf mpc-0.8.1.tar.gz
cd mpc-0.8.1
./configure
make -j 8
make check
sudo make install
cd ..

#
wget http://pkgconfig.freedesktop.org/releases/pkg-config-0.28.tar.gz
tar zxvf pkg-config-0.28.tar.gz
cd pkg-config-0.28.tar.gz
./configure
make -j 8
make check
sudo make install
cd ..

wget http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.14.tar.gz
tar zxvf libiconv-1.14.tar.gz
cd libiconv-1.14
./configure
make -j 8
sudo make install
cd ..

wget http://ftp.gnu.org/pub/gnu/gettext/gettext-0.18.3.1.tar.gz
tar zxvf gettext-0.18.3.1.tar.gz
cd gettext-0.18.3.1
./configure
make -j 8
sudo make install
cd ..

wget http://ftp.gnome.org/pub/gnome/sources/glib/2.2/glib-2.2.2.tar.bz2
tar jxvf glib-2.2.2.tar.bz2
cd glib-2.2.2
./configure
make -j 8
sudo make install
cd ..

sudo apt-get install qemu
git clone https://github.com/NodeOS/NodeOS.git
cd NodeOS
PLATFORM=qemu ./build


git clone https://github.com/NodeOS/NodeOS-Docker.git
cd NodeOS-Docker
./build
