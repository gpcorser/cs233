#!/bin/bash

# Create the subdirectory 'files' if it doesn't exist
mkdir -p files

# Navigate into the 'files' directory
cd files || exit

# Loop to create files from file00.txt to file99.txt
for i in $(seq -w 0 99); do
    filename="file$i.txt"
    
    # Compute MD5 hash of the filename
    md5_hash=$(echo -n "$filename" | md5sum | awk '{print $1}')
    
    # Write the hash into the file
    echo "$md5_hash" > "$filename"
done

echo "100 files created in 'files/' with MD5 hashes of their filenames."
