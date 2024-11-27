# Nội dung file mysql-healthcheck.sh:
#!/bin/bash
mysqladmin ping -h localhost -u root -p$MYSQL_ROOT_PASSWORD > /dev/null 2>&1

Nội dung file backup.sh:
#!/bin/bash

DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/backup"
MYSQL_HOST="mysql"
RETENTION_DAYS=${BACKUP_RETENTION_DAYS:-7}