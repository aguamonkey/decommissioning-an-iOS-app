#!/bin/sh

#  data_backup.sh
#  LegacyAppDecommissioner
#
#  Created by Joshua Browne on 01/09/2024.
#  

#!/bin/bash

# Simulate the backup process by copying a directory or files to a backup location

# Specify the source directory (this could be a directory where user data is stored)
SOURCE_DIR="$HOME/Library/Developer/CoreSimulator/Devices"

# Specify the backup directory (e.g., Desktop/LegacyAppBackup)
BACKUP_DIR="$HOME/Desktop/LegacyAppBackup"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Copy the data to the backup location
echo "Backing up user data from $SOURCE_DIR to $BACKUP_DIR..."
cp -R "$SOURCE_DIR" "$BACKUP_DIR"

echo "Backup completed successfully."
