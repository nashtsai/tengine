#!/bin/sh
sudo echo "installing dependencies..."
sudo apt-get install -y initscripts libc-bin libgd2-xpm-dev libgeoip-dev libxslt1-dev libpcre++0 libpcre++-dev liblua5.1-0-dev libssl-dev lua5.1 openssl passwd libjemalloc-dev &
git submodule update &
wait
NPS_VERSION=1.9.32.1
if [ ! -f nps_$NPS_VERSION.tar.gz ];then
	wget -o nps_$NPS_VERSION.tar.gz https://dl.google.com/dl/page-speed/psol/$NPS_VERSION.tar.gz
fi
cd modules/ngx_pagespeed
tar xvf ../../nps_$NPS_VERSION.tar.gz 
cd -
#rm nps_$NPS_VERSION.tar.gz
