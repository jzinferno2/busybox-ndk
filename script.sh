#!/bin/sh
DIR=$(cd "$(dirname "$0")" && pwd)

cd $DIR

if [ ! -d $DIR/busybox ]; then
  wget https://busybox.net/downloads/busybox-1.35.0.tar.bz2
  tar -xf busybox-1.35.0.tar.bz2
  mv $DIR/busybox-1.35.0 $DIR/busybox

  cd $DIR/busybox
  for i in ../patches/*.patch; do
    patch -p1 < $i
  done;

  cp ../busybox.config .config
  make oldconfig
fi;

cd $DIR/busybox

gcc applets/applet_tables.c -o applets/applet_tables
applets/applet_tables include/applet_tables.h include/NUM_APPLETS.h
gcc applets/usage.c -o applets/usage -Iinclude
applets/usage_compressed include/usage_compressed.h applets
scripts/mkconfigs include/bbconfigopts.h include/bbconfigopts_bz2.h
scripts/generate_BUFSIZ.sh include/common_bufsiz.h
srctree=$(pwd -P) HOSTCC=gcc scripts/embedded_scripts include/embedded_scripts.h embed applets_sh
