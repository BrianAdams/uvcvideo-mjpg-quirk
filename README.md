uvcvideo-mjpg-quirk
===========

https://github.com/pupil-labs/pupil/wiki/Linux-UVC-Bandwidth

sudo rmmod uvcvideo
sudo modprobe uvcvideo quirks=0x4040 jpg_compression=2
sudo sh -c 'echo "options uvcvideo quirks=0x4040 jpg_compression=2" > /etc/modprobe.d/pupil_uvc_cam.conf'
