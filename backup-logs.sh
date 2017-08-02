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

# Hardware info logs
 echo "Backing up hardware information and configuration - please wait..." 
 sh /root/scripts/backups/hardwareinfo.sh 

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

# Database backups
echo "Backing up the mysql database..."
sh /root/scripts/backups/backup-database.sh

# /etc folder backup
backup_files="/etc /root /boot /usr/share/openstack-dashboard"
tar -pczf /opt/openstack-backups/etc-backups/etc.$(date +%d%b%y).tgz $backup_files --exclude "/root/images"
echo "Done!!! \n"

