#!/bin/bash

# Backup source and destination directories
SOURCE_DIR="/path/to/source"   # Directory to backup
BACKUP_DIR="/path/to/backup"  # Directory to store backups

# Create a timestamp for the backup folder
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create a backup using rsync
rsync -av --delete "$SOURCE_DIR/" "$BACKUP_DIR/backup_$TIMESTAMP"

# Optionally, compress the backup folder
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" -C "$BACKUP_DIR" "backup_$TIMESTAMP"

# Remove the uncompressed folder after compression (optional)
rm -rf "$BACKUP_DIR/backup_$TIMESTAMP"

# Print a completion message
echo "Backup completed successfully. Backup saved to: $BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
