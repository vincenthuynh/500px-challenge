#!/bin/bash -e

#Intialize
apt-get update
apt-get install -y build-essential
apt-get install -y tcl8.5

## Install golang | https://github.com/golang/go/wiki/Ubuntu
## Needed to build roshi-server
#yes | add-apt-repository ppa:ubuntu-lxc/lxd-stable
#apt-get install -y golang

## Install Puppet
apt-get install -y puppet
puppet module install puppetlabs-firewall
puppet module install puppetlabs-stdlib
puppet module install puppetlabs-vcsrepo
puppet module install jfryman-nginx
