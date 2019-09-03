# DevOps-Practices

# Lorax / Kickstart / Fedora
# The script is used to create the PXE Linux Live Image

livemedia-creator --make-pxe-live --live-rootfs-keep-size --image-name=fedora --tmp=/var/tmp/os --ks /kickstart.ks --iso=/fedora.iso --resultdir=/var/tmp/os/result
