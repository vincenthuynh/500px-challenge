#!/bin/bash

wget http://upstart.ubuntu.com/download/1.13.2/upstart-1.13.2.tar.gz
tar xvzf upstart-1.13.2.tar.gz
cd upstart-1.13.2
./configure --prefix=/opt/upstart --sysconfdir=/etc