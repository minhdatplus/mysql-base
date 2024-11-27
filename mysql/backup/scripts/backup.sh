# Tạo backup
mysqldump -h $MYSQL_HOST -u root -p$MYSQL_ROOT_PASSWORD --all-databases --events --routines --triggers > $BACKUP_DIR/mysql_backup_$DATE.sql

# Nén file backup
gzip $BACKUP_DIR/mysql_backup_$DATE.sql

# Xóa các backup cũ
find $BACKUP_DIR -name "mysql_backup_*.sql.gz" -mtime +$RETENTION_DAYS -exec rm {} \;

# Kiểm tra kết quả
if [ $? -eq 0 ]; then
    echo "Backup completed successfully"
else
    echo "Backup failed"
    exit 1
fi