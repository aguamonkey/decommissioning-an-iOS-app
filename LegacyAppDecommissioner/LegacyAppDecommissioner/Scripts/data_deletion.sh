#!/bin/sh

#  data_deletion.sh
#  LegacyAppDecommissioner
#
#  Created by Joshua Browne on 01/09/2024.
#  

# Simulate the data deletion process by removing a directory or files

# Specify the source directory (this could be a directory where user data is stored)
SOURCE_DIR="$HOME/Library/Developer/CoreSimulator/Devices"

# Confirm with the user before deletion
read -p "Are you sure you want to delete all user data in $SOURCE_DIR? This action cannot be undone. (y/n): " confirm
if [ "$confirm" != "y" ]; then
    echo "Data deletion cancelled."
    exit 0
fi

# Delete the data
echo "Deleting user data in $SOURCE_DIR..."
rm -rf "$SOURCE_DIR"

echo "User data deleted successfully."
