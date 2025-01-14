#!/bin/bash

# Configuration
SOURCE_DIR="/var/www/app"        
BACKUP_DIR="/backup"             
TIMESTAMP=$(date +'%Y-%m-%d')    
BACKUP_FILE="app-backup-$TIMESTAMP.tar.gz"  


# Create the backup
echo "Backing up $SOURCE_DIR to $BACKUP_DIR/$BACKUP_FILE..."
tar -czf "$BACKUP_DIR/$BACKUP_FILE" -C "$SOURCE_DIR" .

# Cleanup old backups (older than 7 days)
echo "Cleaning up old backups..."
find "$BACKUP_DIR" -type f -name "app-backup-*.tar.gz" -mtime +7 -exec rm {} \;

echo "Backup and cleanup completed."
