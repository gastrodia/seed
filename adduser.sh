sudo adduser --ingroup admin newuser
sudo mkdir /home/newuser/.ssh
sudo cp /home/bitnami/.ssh/authorized_keys /home/newuser/.ssh/authorized_keys
sudo chown -R newuser:admin /home/newuser
sudo chmod 600 /home/newuser/.ssh/authorized_keys
#edit /etc/ssh/sshd_config add
AllowGroups admin
#edit /etc/sudoers add
%admin ALL=(ALL) ALL
