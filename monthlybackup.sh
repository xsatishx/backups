# Use this script  to tar all the backup files monthly 

backup_files="/opt/openstack-backups/computelogs  /opt/openstack-backups/controllerlogs  /opt/openstack-backups/database  /opt/openstack-backups/etc-backups  /opt/openstack-backups/hardwareinfo"
tar -pczf /opt/openstack-backups/monthly_backup/$(date +%d%b%y).tgz $backup_files 
echo "Done!!! \n"

# Remove the old individual backup files.
echo "Removing the old files that have been tar'd\n"
rm -rf /opt/openstack-backups/computelogs/*  /opt/openstack-backups/controllerlogs/*  /opt/openstack-backups/database/*  /opt/openstack-backups/etc-backups/*  /opt/openstack-backups/hardwareinfo/*
