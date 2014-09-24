#!/bin/sh
./configure --enable-mods-shared=all --with-file-aio --with-ipv6 --with-jemalloc --add-module=modules/ngx_pagespeed $@
