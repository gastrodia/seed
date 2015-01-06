sudo echo '# Define Encoding
set defencoding en_US.UTF-8
set encoding en_US.UTF-8 UTF-8' > ~/.screenrc
source ~/.screenrc

sudo echo '
en_US.UTF-8 UTF-8
zh_CN.GBK GBK
zh_CN.GB2312 GB2312
zh_CN.GB18030 GB18030
' > /var/lib/locales/supported.d/local

sudo dpkg-reconfigure locales

sudo echo '
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=prc
' >> /etc/vim/vimrc

sudo echo '
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8
' >> ~/.bashrc
source ~/.bashrc
