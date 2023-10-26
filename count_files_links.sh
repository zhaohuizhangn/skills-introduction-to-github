#!/bin/bash

# Replace "YOUR_DIRECTORY_PATH" with the actual path you want to check.
DIRECTORY="YOUR_DIRECTORY_PATH"

#This script will count the number of files, including symbolic links, in each subdirectory within the specified directory.
#----Zhaohui Zhang--------
#----09/10/2020-----------

# Check if the directory exists
if [ -d "$DIRECTORY" ]; then
    # Loop through the subdirectories
    for dir in "$DIRECTORY"/*; do
        # Check if the subdirectory is a directory
        if [ -d "$dir" ]; then
            # Count the number of files in each subdirectory, including symbolic links, and print the result
            file_count=$(find "$dir" -maxdepth 1 \( -type f -o -type l \) | wc -l)
            echo "Number of files in $dir: $file_count"
        fi
    done
else
    echo "Directory does not exist."
fi






