#!/bin/bash

DATE=$(date +'%Y%m%d-%H%M%S')

BACKUP_DIR="/home/itescia-backup/backups"

USER="itescia-backup"
PASSWORD="itescia"

mysqldump -u $USER -p$PASSWORD --all-databases > "$BACKUP_DIR"/"$DATE"_backup.sql.gz