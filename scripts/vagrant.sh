export DEBIAN_FRONTEND="noninteractive"

date > /etc/vagrant_box_build_time

mkdir /home/vagrant/.ssh
wget 'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub' \
  -O /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
apt-get install -y nfs-kernel-server
