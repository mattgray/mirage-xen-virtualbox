apt-get -y install dkms

mkdir /mnt/vbox
mount -o loop VBoxGuestAdditions.iso /mnt/vbox
/mnt/vbox/VBoxLinuxAdditions.run --nox11 || true
