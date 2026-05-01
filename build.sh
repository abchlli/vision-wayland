#!/bin/bash
source ./clean.sh
source ./pkgs.d/*

# Are you root?
if [ "$(id -u)" -ne 0 ] ; then 
  echo "Run as root!" ; exit 1
fi

cd void-mklive/
./mkiso.sh \
    -r "https://repo-fastly.voidlinux.org/current" \
    -r "https://repo-fastly.voidlinux.org/current/nonfree" \
    -- \
    -a "x86_64" \
    -b "base-system" \
    -o ../build/vision.iso \
    -p "$system $drivers" \
    -I ../root \
    -e /bin/bash \
    -C "live.shell=/bin/bash" \
    -T "Vision Linux"
cd ..
