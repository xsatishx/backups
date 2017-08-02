#!/bin/bash
dest="/opt/openstack-backups/hardwareinfo/"
mkdir -p $dest
day=$(date +%d%b%y-%H%M)
hostname=$(hostname -s)
hardwareinfo="hardwareinfo"
hardware_file="$hostname-$day-$hardwareinfo.txt"
echo "####################################################" >> $dest/$hardware_file
echo "Output: lsb_release -a" >> $dest/$hardware_file
lsb_release -a >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: uname -a" >> $dest/$hardware_file
uname -a >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: uname -m" >> $dest/$hardware_file
uname -m >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: getconf -a" >> $dest/$hardware_file
getconf -a >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: dmidecode" >> $dest/$hardware_file
dmidecode >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: lshw" >> $dest/$hardware_file
lshw >> $dest/$hardware_file
echo "Output: lshw -short" >> $dest/$hardware_file
lshw -short >> $dest/$hardware_file
echo "Output: lshw -short -C system" >> $dest/$hardware_file
lshw -short -C system >> $dest/$hardware_file
echo "Output: lshw -short -C storage" >> $dest/$hardware_file
lshw -short -C storage  >> $dest/$hardware_file
echo "Output: lshw -short -C disk" >> $dest/$hardware_file
lshw -short -C disk >> $dest/$hardware_file
echo "Output: lshw -short -C network" >> $dest/$hardware_file
lshw -short -C network >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: cat /proc/meminfo" >> $dest/$hardware_file
cat /proc/meminfo >> $dest/$hardware_file
echo "Output: free -om" >> $dest/$hardware_file
free -om >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: cat /proc/cpuinfo" >> $dest/$hardware_file
cat /proc/cpuinfo >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: lsblk" >> $dest/$hardware_file
lsblk >> $dest/$hardware_file
echo "Output: blkid" >> $dest/$hardware_file
blkid >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Display IRQ, IO ports and DMA" >> $dest/$hardware_file
echo "Output: cat /proc/interrupts" >> $dest/$hardware_file
cat /proc/interrupts  >> $dest/$hardware_file
echo "Output: cat /proc/ioports" >> $dest/$hardware_file 
cat /proc/ioports >> $dest/$hardware_file
echo "Output: cat /proc/dma" >> $dest/$hardware_file
cat /proc/dma >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: pagesize|page_size" >> $dest/$hardware_file
getconf -a| egrep -i 'pagesize|page_size' >> $dest/$hardware_file
echo "Output: swapon -s" >> $dest/$hardware_file
swapon -s >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: df -hT" >> $dest/$hardware_file
df -hT >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Network" >> $dest/$hardware_file
echo "Output: cat /etc/network/interfaces" >> $dest/$hardware_file
cat /etc/network/interfaces >> $dest/$hardware_file
echo "Output: ifconfig" >> $dest/$hardware_file
ifconfig >> $dest/$hardware_file
echo "Output: sysctl -a |grep net*" >> $dest/$hardware_file
sysctl -a |grep net* >> $dest/$hardware_file
echo "Output: route -n" >> $dest/$hardware_file
route -n >> $dest/$hardware_file
echo "Output: netstat -a " >> $dest/$hardware_file
netstat -a >> $dest/$hardware_file
echo "Output: cat /etc/resolv.conf " >> $dest/$hardware_file
cat /etc/resolv.conf >> $dest/$hardware_file
echo "Output: cat /etc/resolvconf/resolv.conf.d/head" >> $dest/$hardware_file
cat /etc/resolvconf/resolv.conf.d/head >> $dest/$hardware_file
echo "Output: cat /etc/resolvconf/resolv.conf.d/base" >> $dest/$hardware_file
cat /etc/resolvconf/resolv.conf.d/base >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: vmstat" >> $dest/$hardware_file
vmstat >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: dpkg -l - display installed packages" >> $dest/$hardware_file
dpkg -l >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: ntpq -p" >> $dest/$hardware_file
ntpq -p >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: nslookup $hostname" >> $dest/$hardware_file
nslookup $hostname >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: brctl show" >> $dest/$hardware_file
brctl show  >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
echo "Output: ip a" >> $dest/$hardware_file
ip a >> $dest/$hardware_file
echo "####################################################" >> $dest/$hardware_file
