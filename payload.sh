sudo apt-get install patchutils libproc-processtable-perl git
git clone git://linuxtv.org/media_build.git
cd media_build
./build --main-git
cd media
wget https://gist.githubusercontent.com/mkassner/10134241/raw/58a48f0e05c85f85a5be41a6207e0d0aebc51ac9/mjepg_bandwidth.patch
git apply mjepg_bandwidth.patch
cd ../
make -C v4l/
sudo make
