#!/bin/bash

# Check if the 'files' directory exists
if [ ! -d "files" ]; then
    echo "Error: 'files' directory not found!"
    exit 1
fi

# Find and print filenames that contain the substring "010"
echo "Files containing '010' in their filename:"
ls files/ | grep "00"
