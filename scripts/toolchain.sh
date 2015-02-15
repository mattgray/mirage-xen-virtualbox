apt-get install -y build-essential
apt-get install -y m4
apt-get install -y make
apt-get install -y vim
apt-get install -y git
apt-get install -y libssl-dev
apt-get install -y pkg-config
apt-get install -y software-properties-common
add-apt-repository -y ppa:avsm/ocaml41+opam12
apt-get update
apt-get install -y opam ocaml-native-compilers camlp4-extra
