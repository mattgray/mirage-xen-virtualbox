mirage-xen-virtualbox
=====================

Packer template to build Vagrant based Ubuntu + Xen development environment, based on blog post here: http://www.skjegstad.com/blog/2015/01/19/mirageos-xen-virtualbox/

Ubuntu packer template based on: https://github.com/shiguredo/packer-templates/tree/develop/ubuntu-14.04

:horse:

TODO
----

* ~~Do virtualbox guest additions work with xen at all?~~
* ~~script to install xen~~
* ~~NFS for shared folders?~~
* ~~configure bridge adaptor + DHCP~~
* ~~Vagrantfile template with host only + NIC promiscuos mode settings~~
* Install avahi-daemon?
* Install git / build essential
* Install ocaml / opam (into image?)
  * best way to install opam?
  * use ocamlbrew??
  * or 0install, but not take the x dependency?
* Test building a skeleton
* Make it so that mirage builds can be pushed to the box and compiled and run
* Make it so that running unikernels can be registered into DNS
