apt-get install -y build-essential m4 git vim
apt-get install -y libssl-dev pkg-config
apt-get install -y software-properties-common
add-apt-repository -y ppa:avsm/ocaml41+opam12
apt-get update
apt-get install -y opam ocaml-native-compilers camlp4-extra
