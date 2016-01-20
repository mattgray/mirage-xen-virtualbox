export DEBIAN_FRONTEND="noninteractive"

apt-get install -y dnsmasq avahi-daemon
sleep 5 # sleep here otherwise subsequent package installs fail as network not back up
