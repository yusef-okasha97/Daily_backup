# daily_backup
his script is designed to back up a specified source directory to a backup directory. It uses rsync to perform the backup and tar to compress the backup folder. The script also logs the backup operation to a log file for verification. The script is intended to be scheduled as a cron job to run periodically

### Features
- Efficient Backup: Uses rsync to sync files from the source to the backup directory.
- Compression: Compresses the backup folder into .tar.gz files to save disk space.
- Automated Logging: Logs each backup operation with timestamps for verification and troubleshooting.
- Cron Job Support: Can be easily set up to run at regular intervals, such as every 2 minutes.

### Make the Script Executable:
```
chmod +x daily_backup.sh
```

### Set Up Cron Job for Daily Backup:
To make this backup run daily, you can add a cron job. Open your crontab file by typing:
```
crontab -e
```

### Then, add the following line to schedule the backup at a specific time (e.g., 2:00 AM daily):
```
0 2 * * * /path/to/daily_backup.sh
```



