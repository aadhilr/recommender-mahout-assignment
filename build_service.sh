#!/bin/sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Get Twisted, and Klein and Redis modules for Python.
sudo yum install python-pip
sudo pip install twisted
sudo pip install klein
sudo pip install redis

# Install Redis and start up the server

wget http://download.redis.io/releases/redis-2.8.7.tar.gz
tar xzf redis-2.8.7.tar.gz
cd redis-2.8.7
make
./src/redis-server &


