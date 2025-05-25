#!/bin/bash

set -e

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/backup-project/backups"
LOG_DIR="$HOME/backup-project/logs"
DATE=$(date +'%y-%m-%d_%h-%m-%s')
BACKUP_NAME="backup_$DATE.tar.gz"
LOG_FILE="$LOG_DIR/backup_$DATE.log"

mkdir -p "$BACKUP_DIR"
mkdir -p "$LOG_DIR"


echo "[$(date)] Starting Backup..." >> "$LOG_FILE"
tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C "$SOURCE_DIR" . >> "$LOG_FILE" 2>&1

if [ $? -eq 0 ]; then
	echo "[$(date)] Backup completed successfully: $BACKUP_NAME" >> "$LOG_FILE"
else
	echo "[$(date)]Backup FAILED!" >> "$LOG_FILE"
fi

find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;
find "$LOG_DIR" -type f -name "*.log" -mtime +7 -exec rm {} \;


