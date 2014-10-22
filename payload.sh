# workaround where chroot does not resolve dns with standard servers
echo 'nameserver 208.67.222.222' > ${CHROOT_DIR}/etc/resolv.conf
echo 'nameserver 208.67.220.220' >> ${CHROOT_DIR}/etc/resolv.conf

apt-get update -qq
apt-get -y install patchutils libproc-processtable-perl git make gcc
  git clone git://linuxtv.org/media_build.git
cd media_build
./build --main-git
cd media
wget https://gist.githubusercontent.com/mkassner/10134241/raw/58a48f0e05c85f85a5be41a6207e0d0aebc51ac9/mjepg_bandwidth.patch
pwd
ls
git apply mjepg_bandwidth.patch
cd ../
make -C v4l/
sudo make
