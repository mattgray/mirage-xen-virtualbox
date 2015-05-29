mirage-xen-virtualbox
=====================

A Packer template to build an environment in which to run [MirageOS](http://www.openmirage.org/) unikernels under Xen. It uses Vagrant, Virtualbox and is based on Ubuntu 14.04. It's based on the blog post here: http://www.skjegstad.com/blog/2015/01/19/mirageos-xen-virtualbox/

Ubuntu packer template based on: https://github.com/shiguredo/packer-templates/tree/develop/ubuntu-14.04

How to build
------------
You'll need to have [Packer](https://www.packer.io/), [Vagrant](https://www.vagrantup.com/), Virtualbox (and ideally a speedy internet connection...)

* clone this repo and cd into it
* `packer build template.json`
* .. wait awhile..
* If successful, this will result in a vagrant .box file being generated: `virtualbox-xen.box` 

How to use
----------

There are a few possibilties of how to use it. The simplest is documented here

* Import the `.box` file into Vagrant `vagrant box add virtualbox-xen.box --name virtualbox-xen`
* In an empty directory, `vagrant init virtualbox-xen` - this creates a Vagrantfile
* Spin up the box and provision it: `vagrant up`
  * this sets up a bridge interface and installs `opam` and `mirage` for the vagrant user
* `vagrant ssh`
* Then clone eg. `mirage-skeleton` and build :)

I think it should be possible to customise the Vagrantfile generated in step 2 to allow NFS shared folders, or a different private network subnet. But I haven't tested those yet (see TODO)

BUGS (KNOWN)
------------

For some reason https://github.com/mattgray/mirage-xen-virtualbox/blob/master/scripts/toolchain.sh does not install m4 correctly, causing `opam install -y mirage` to fail during provisioning. The fix is to `vagrant ssh` and install manually, then repeat the `opam install <xyz>`

TODO
----

* ~~Do virtualbox guest additions work with xen at all?~~
* ~~script to install xen~~
* ~~NFS for shared folders?~~
* ~~configure bridge adaptor + DHCP~~
* ~~Vagrantfile template with host only + NIC promiscuos mode settings~~
* ~~Install avahi-daemon?~~
* ~~Install git / build essential~~
* ~~Install ocaml / opam (into image?)~~
* ~~Test building a skeleton~~
* ~~Figure out why `m4` is not installed by packer scripts, thus preventing provisioners from working~~
* Test bridge config works with overridden `private_network` in Vagrantfile
* ~~Test NFS synced folders~~
* make tun/tap work
* Make it so that mirage builds can be pushed to the box and compiled and run with no command line interaction to the VM
* Make it so that running unikernels can be registered into avahi DNS automatically by parsing console output for DHCP assigned IPs
*  Support VMWare? But i don't have vmware available to test
