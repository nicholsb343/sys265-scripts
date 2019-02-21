
#SECURE-SSH.SH
#AUTHOR NICHOLSB343
#Creates a new ssh user called $1
#Adds a public key to that users authorized keys file
#Removes root ability to ssh in

#echo "testing 123"
echo creating user:$1
sudo useradd $1
sudo mkdir /home/$1/.ssh
sudo cp linux/public-keys/sys265.pub /home/$1/.ssh/authorized_keys
sudo chmod 700 /home/$1/.ssh
sudo chmod 600 /home/$1/.ssh/authorized_keys
sudo chown -R $1:$1 /home/$username/.ssh
sudo echo 'Permitrootlogin no' >> /etc/ssh/sshd_config
sudo chown -R sys265:sys265 /home/sys265
