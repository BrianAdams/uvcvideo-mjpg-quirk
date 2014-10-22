#!/bin/bash
set -e
# workaround where chroot does not resolve dns with standard servers
echo 'nameserver 208.67.222.222' > ${CHROOT_DIR}/etc/resolv.conf
echo 'nameserver 208.67.220.220' >> ${CHROOT_DIR}/etc/resolv.conf

apt-get update -qq
apt-get -y install patchutils libproc-processtable-perl git make gcc
  git clone git://linuxtv.org/media_build.git
cd media_build
./build --main-git
cd media
wget https://gist.githubusercontent.com/BrianAdams/a558717b9ede409414fa/raw/386e935bc3fce743632d529d7c85c985e9747ffc/mjepg_bandwidth.patch
pwd
ls
git apply mjepg_bandwidth.patch
cd ../
make -C v4l/
sudo make
ls
ls v4l/
