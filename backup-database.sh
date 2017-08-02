mkdir -p /opt/openstack-backups/database 
mysqldump -u root -pcpphpassword --opt --all-databases > /opt/openstack-backups/database/openstack.sql.r.$(date +%d%b%y)
