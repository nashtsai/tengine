#!/bin/sh
./configure_all.sh $@
JOBS=`expr $(grep -c ^processor /proc/cpuinfo) \* 4`
make -j$JOBS
