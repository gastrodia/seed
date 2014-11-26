sudo echo '# Define Encoding
defencoding UTF-8
encoding UTF-8 UTF-8' >> ~/.screenrc
source ~./.screenrc

sudo echo '
en_US.UTF-8 UTF-8
zh_CN.GBK GBK
zh_CN.GB2312 GB2312
zh_CN.GB18030 GB18030
' >> /var/lib/locales/supported.d/local

sudo dpkg-reconfigure locales

sudo echo '
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=prc
' >> /etc/vim/vimrc

vim
