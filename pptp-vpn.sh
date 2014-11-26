 #http://blog.fens.me/vpn-pptp-client-ubuntu/

 sudo aptitude install ppp pptp-linux
 pptpsetup --create my_tunnel --server sg1.yohide.com --username Meng --password mnbmnb --encrypt
 pon my_tunnel
 poff my_tunnel
 
