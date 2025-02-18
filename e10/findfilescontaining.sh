#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <search_string>"
    exit 1
fi

# Assign the first argument to a variable
search_string="$1"

# Check if the 'files' directory exists
if [ ! -d "files" ]; then
    echo "Error: 'files' directory not found!"
    exit 1
fi

# Search for the provided string in file contents and print matching filenames
echo "Files containing '$search_string' in their contents:"
grep -l "$search_string" files/*
