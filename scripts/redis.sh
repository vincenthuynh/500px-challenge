#!/bin/bash

# http://redis.io/topics/quickstart
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
make test
make install