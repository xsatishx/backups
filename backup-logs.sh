# Collects logs files and other backup data , controlled by cron
# Maintainer -> Satish Balakrishnan <satish@healthseq.com>

# Controller logs
 echo "Backing up controller logs..."
 mkdir -p /opt/openstack-backups/controllerlogs
 cp --preserve=timestamp -R /var/log/nova/ "/opt/openstack-backups/controllerlogs/nova.$(date +%d%b%y)/"
 cp --preserve=timestamp -R /var/log/cinder/ "/opt/openstack-backups/controllerlogs/cinder.$(date +%d%b%y)/"
 cp --preserve=timestamp -R /var/log/glance/ "/opt/openstack-backups/controllerlogs/glance.$(date +%d%b%y)/"
 cp --preserve=timestamp -R /var/log/keystone/ "/opt/openstack-backups/controllerlogs/keystone.$(date +%d%b%y)/"
 cp --preserve=timestamp -R /var/log/ceilometer/ "/opt/openstack-backups/controllerlogs/ceilometer.$(date +%d%b%y)/"
 cp --preserve=timestamp -R /var/log/mysql/ "/opt/openstack-backups/controllerlogs/mysql.$(date +%d%b%y)/"
 cp --preserve=timestamp -R /var/log/rabbitmq/ "/opt/openstack-backups/controllerlogs/rabbitmq.$(date +%d%b%y)/"
 cp --preserve=timestamp -R /var/log/apache2/ "/opt/openstack-backups/controllerlogs/apache2.$(date +%d%b%y)/"
 echo "Done!!!\n"

# Compute1 logs 
 echo "Backing up compute1 logs..."
 mkdir -p /opt/openstack-backups/computelogs/nova-compute1.$(date +%d%b%y)/nova
 mkdir -p /opt/openstack-backups/computelogs/nova-compute1.$(date +%d%b%y)/libvirt
 mkdir -p /opt/openstack-backups/computelogs/nova-compute1.$(date +%d%b%y)/ceilometer
 rsync -a  10.32.0.23:/var/log/nova/ "/opt/openstack-backups/computelogs/nova-compute1.$(date +%d%b%y)/nova/"
 rsync -a  10.32.0.23:/var/log/libvirt/ "/opt/openstack-backups/computelogs/nova-compute1.$(date +%d%b%y)/libvirt/"
 rsync -a  10.32.0.23:/var/log/ceilometer/ "/opt/openstack-backups/computelogs/nova-compute1.$(date +%d%b%y)/ceilometer/"
 echo "Done!!! \n"

# Compute2 logs
 echo "Backing up compute2 logs..."
 mkdir -p /opt/openstack-backups/computelogs/nova-compute2.$(date +%d%b%y)/nova
 mkdir -p /opt/openstack-backups/computelogs/nova-compute2.$(date +%d%b%y)/libvirt
 mkdir -p /opt/openstack-backups/computelogs/nova-compute2.$(date +%d%b%y)/ceilometer
 rsync -a  10.32.0.24:/var/log/nova/ "/opt/openstack-backups/computelogs/nova-compute2.$(date +%d%b%y)/nova/"
 rsync -a  10.32.0.24:/var/log/libvirt/ "/opt/openstack-backups/computelogs/nova-compute2.$(date +%d%b%y)/libvirt/"
 rsync -a  10.32.0.24:/var/log/ceilometer/ "/opt/openstack-backups/computelogs/nova-compute2.$(date +%d%b%y)/ceilometer/"
 echo "Done!!! \n"

# Compute3 logs
 echo "Backing up compute3 logs..."
 mkdir -p /opt/openstack-backups/computelogs/nova-compute3.$(date +%d%b%y)/nova
 mkdir -p /opt/openstack-backups/computelogs/nova-compute3.$(date +%d%b%y)/libvirt
 mkdir -p /opt/openstack-backups/computelogs/nova-compute3.$(date +%d%b%y)/ceilometer
 rsync -a  10.32.0.25:/var/log/nova/ "/opt/openstack-backups/computelogs/nova-compute3.$(date +%d%b%y)/nova/"
 rsync -a  10.32.0.25:/var/log/libvirt/ "/opt/openstack-backups/computelogs/nova-compute3.$(date +%d%b%y)/libvirt/"
 rsync -a  10.32.0.25:/var/log/ceilometer/ "/opt/openstack-backups/computelogs/nova-compute3.$(date +%d%b%y)/ceilometer/"
 echo "Done!!! \n"

# Compute4 logs
echo "Backing up compute4 logs..." 
mkdir -p /opt/openstack-backups/computelogs/nova-compute4.$(date +%d%b%y)/nova
mkdir -p /opt/openstack-backups/computelogs/nova-compute4.$(date +%d%b%y)/libvirt
mkdir -p /opt/openstack-backups/computelogs/nova-compute4.$(date +%d%b%y)/ceilometer
rsync -a  10.32.0.26:/var/log/nova/ "/opt/openstack-backups/computelogs/nova-compute4.$(date +%d%b%y)/nova/"
rsync -a  10.32.0.26:/var/log/libvirt/ "/opt/openstack-backups/computelogs/nova-compute4.$(date +%d%b%y)/libvirt/"
rsync -a  10.32.0.26:/var/log/ceilometer/ "/opt/openstack-backups/computelogs/nova-compute4.$(date +%d%b%y)/ceilometer/"
echo "Done!!! \n"

# Compute5 logs
 echo "Backing up compute5 logs..."
 mkdir -p /opt/openstack-backups/computelogs/nova-compute5.$(date +%d%b%y)/nova
 mkdir -p /opt/openstack-backups/computelogs/nova-compute5.$(date +%d%b%y)/libvirt
 mkdir -p /opt/openstack-backups/computelogs/nova-compute5.$(date +%d%b%y)/ceilometer
 rsync -a  10.32.0.27:/var/log/nova/ "/opt/openstack-backups/computelogs/nova-compute5.$(date +%d%b%y)/nova/"
 rsync -a  10.32.0.27:/var/log/libvirt/ "/opt/openstack-backups/computelogs/nova-compute5.$(date +%d%b%y)/libvirt/"
 rsync -a  10.32.0.27:/var/log/ceilometer/ "/opt/openstack-backups/computelogs/nova-compute5.$(date +%d%b%y)/ceilometer/"
 echo "Done!!! \n"

# Compute6 logs
 echo "Backing up compute6 logs..."
 mkdir -p /opt/openstack-backups/computelogs/nova-compute6.$(date +%d%b%y)/nova
 mkdir -p /opt/openstack-backups/computelogs/nova-compute6.$(date +%d%b%y)/libvirt
 mkdir -p /opt/openstack-backups/computelogs/nova-compute6.$(date +%d%b%y)/ceilometer
 rsync -a  10.32.0.28:/var/log/nova/ "/opt/openstack-backups/computelogs/nova-compute6.$(date +%d%b%y)/nova/"
 rsync -a  10.32.0.28:/var/log/libvirt/ "/opt/openstack-backups/computelogs/nova-compute6.$(date +%d%b%y)/libvirt/"
 rsync -a  10.32.0.28:/var/log/ceilometer/ "/opt/openstack-backups/computelogs/nova-compute6.$(date +%d%b%y)/ceilometer/"
 echo "Done!!! \n"

# Compute7 logs
 echo "Backing up compute7 logs..."
 mkdir -p /opt/openstack-backups/computelogs/nova-compute7.$(date +%d%b%y)/nova
 mkdir -p /opt/openstack-backups/computelogs/nova-compute7.$(date +%d%b%y)/libvirt
 mkdir -p /opt/openstack-backups/computelogs/nova-compute7.$(date +%d%b%y)/ceilometer
 rsync -a  10.32.0.33:/var/log/nova/ "/opt/openstack-backups/computelogs/nova-compute7.$(date +%d%b%y)/nova/"
 rsync -a  10.32.0.33:/var/log/libvirt/ "/opt/openstack-backups/computelogs/nova-compute7.$(date +%d%b%y)/libvirt/"
 rsync -a  10.32.0.33:/var/log/ceilometer/ "/opt/openstack-backups/computelogs/nova-compute7.$(date +%d%b%y)/ceilometer/"
 echo "Done!!! \n"

# Compute8 logs
 echo "Backing up compute8 logs..."
 mkdir -p /opt/openstack-backups/computelogs/nova-compute8.$(date +%d%b%y)/nova
 mkdir -p /opt/openstack-backups/computelogs/nova-compute8.$(date +%d%b%y)/libvirt
 mkdir -p /opt/openstack-backups/computelogs/nova-compute8.$(date +%d%b%y)/ceilometer
 rsync -a  10.32.0.34:/var/log/nova/ "/opt/openstack-backups/computelogs/nova-compute8.$(date +%d%b%y)/nova/"
 rsync -a  10.32.0.34:/var/log/libvirt/ "/opt/openstack-backups/computelogs/nova-compute8.$(date +%d%b%y)/libvirt/"
 rsync -a  10.32.0.34:/var/log/ceilometer/ "/opt/openstack-backups/computelogs/nova-compute8.$(date +%d%b%y)/ceilometer/"
 echo "Done!!! \n"

# Compute9 logs
 echo "Backing up compute9 logs..."
 mkdir -p /opt/openstack-backups/computelogs/nova-compute9.$(date +%d%b%y)/nova
 mkdir -p /opt/openstack-backups/computelogs/nova-compute9.$(date +%d%b%y)/libvirt
 mkdir -p /opt/openstack-backups/computelogs/nova-compute9.$(date +%d%b%y)/ceilometer
 rsync -a  10.32.0.35:/var/log/nova/ "/opt/openstack-backups/computelogs/nova-compute9.$(date +%d%b%y)/nova/"
 rsync -a  10.32.0.35:/var/log/libvirt/ "/opt/openstack-backups/computelogs/nova-compute9.$(date +%d%b%y)/libvirt/"
 rsync -a  10.32.0.35:/var/log/ceilometer/ "/opt/openstack-backups/computelogs/nova-compute9.$(date +%d%b%y)/ceilometer/"
 echo "Done!!! \n"

# Compute10 logs
 echo "Backing up compute10 logs..."
 mkdir -p /opt/openstack-backups/computelogs/nova-compute10.$(date +%d%b%y)/nova
 mkdir -p /opt/openstack-backups/computelogs/nova-compute10.$(date +%d%b%y)/libvirt
 mkdir -p /opt/openstack-backups/computelogs/nova-compute10.$(date +%d%b%y)/ceilometer
 rsync -a  10.32.0.36:/var/log/nova/ "/opt/openstack-backups/computelogs/nova-compute10.$(date +%d%b%y)/nova/"
 rsync -a  10.32.0.36:/var/log/libvirt/ "/opt/openstack-backups/computelogs/nova-compute10.$(date +%d%b%y)/libvirt/"
 rsync -a  10.32.0.36:/var/log/ceilometer/ "/opt/openstack-backups/computelogs/nova-compute10.$(date +%d%b%y)/ceilometer/"
 echo "Done!!! \n"

# Compute11 logs
 echo "Backing up compute11 logs..."
 mkdir -p /opt/openstack-backups/computelogs/nova-compute11.$(date +%d%b%y)/nova
 mkdir -p /opt/openstack-backups/computelogs/nova-compute11.$(date +%d%b%y)/libvirt
 mkdir -p /opt/openstack-backups/computelogs/nova-compute11.$(date +%d%b%y)/ceilometer
 rsync -a  10.32.0.37:/var/log/nova/ "/opt/openstack-backups/computelogs/nova-compute11.$(date +%d%b%y)/nova/"
 rsync -a  10.32.0.37:/var/log/libvirt/ "/opt/openstack-backups/computelogs/nova-compute11.$(date +%d%b%y)/libvirt/"
 rsync -a  10.32.0.37:/var/log/ceilometer/ "/opt/openstack-backups/computelogs/nova-compute11.$(date +%d%b%y)/ceilometer/"
 echo "Done!!! \n"

# Compute12 logs
 echo "Backing up compute12 logs..."
 mkdir -p /opt/openstack-backups/computelogs/nova-compute12.$(date +%d%b%y)/nova
 mkdir -p /opt/openstack-backups/computelogs/nova-compute12.$(date +%d%b%y)/libvirt
 mkdir -p /opt/openstack-backups/computelogs/nova-compute12.$(date +%d%b%y)/ceilometer
 rsync -a  10.32.0.38:/var/log/nova/ "/opt/openstack-backups/computelogs/nova-compute12.$(date +%d%b%y)/nova/"
 rsync -a  10.32.0.38:/var/log/libvirt/ "/opt/openstack-backups/computelogs/nova-compute12.$(date +%d%b%y)/libvirt/"
 rsync -a  10.32.0.38:/var/log/ceilometer/ "/opt/openstack-backups/computelogs/nova-compute12.$(date +%d%b%y)/ceilometer/"
 echo "Done!!! \n"


# Database backups
echo "Backing up the mysql database..."
mysqldump -u root -pcpphpassword --opt --all-databases > /opt/openstack-backups/database/openstack.sql.r.$(date +%d%b%y)

# /etc folder backup
backup_files="/etc /root /boot /usr/share/openstack-dashboard"
tar -pczf /opt/openstack-backups/etc-backups/etc.$(date +%d%b%y).tgz $backup_files --exclude "/root/images"
echo "Done!!! \n"

# Back up hardware info 
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

