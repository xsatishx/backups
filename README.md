 This folder contains the backup scripts for taking backup of the PDC.

Please do not run this script manually - these are configured in crontab.

backup-logs.sh   - Takes back of all logs (controller and computes) , hardware info , system info and database.
monthlybackup.sh  - tars all the backup per month and deletes the individual files. 
