#version=DEVEL
#Disable firewall configuration
firewall --disable
#Use network installation
url --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-$releasever&arch=$basearch
#Change root password
rootpw --plaintext root
#Network configuration
network --bootproto=dhcp --device=link --activate
#system authorization information
auth --enableshadow --passalgo=sha512
#poweroff after installation
shutdown
#keyboard layouts
keyboard us
#system language
lang en_US.UTF-8
#disable SELinux
selinux --disabled
#system timezone
#timezone --ntpservers=ntp.nic.cz --utc Etc/UTC
timezone America/Montreal
#system bootloader configuration
bootloader --timeout=1 --append="no_timer_check console=tty1 console=ttyS0,115200n8"
#partition clearing information
zerombr
clearpart --all --initlabel --disklabel=msdos
#disk partitioning information
part / --size 9500 --fstype ext4
#repo --name=my-fedora-updates --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f$releasever&arch=$basearch
#repo --name=repo --baseurl=http://192.168.1.1/repo/
#install packages
%packages --excludedocs --instLangs=en_US
#@X Windows System
#@Desktop
#@firefox
#@libreoffice
#@KDE
#@firefox
#@Development Tools
kernel
kernel-devel
ethtool
htop
gcc
httpd
ipmitool
lshw
lsof
vim
stress
mc
bc
nfs-utils
nmap
sfc-dkms
sfutils
zip
ntpdate
screen
strace
tcpdump
telnet
traceroute
policycoreutils
dracut-live
selinux-policy-targeted
#New modifications
pciutils
dmidecode
net-tools
ncurses*
alsa*
qt5*
libusbx-devel
wget
qtwebkit
ncurses-compat-libs
alsa-utils
libusb
dmidecode
hdparm
nvme-cli
sysbench
dkms
elfutils-libelf-devel
zlib-devel
smartmontools
pvs
pciutils
#glibc
%end

%post

(
set -x

) &> /root/ks.out
#clear
%end
