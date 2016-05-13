#!/bin/bash

# http://redis.io/topics/quickstart
apt-get update
apt-get install build-essential
apt-get install tcl8.5
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
make test
make install