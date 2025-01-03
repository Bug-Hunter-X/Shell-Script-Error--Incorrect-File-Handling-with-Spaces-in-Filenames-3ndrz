#!/bin/bash

# This script attempts to process files in a directory,
# but it has a subtle error related to how it handles
# filenames containing spaces.

DIR="/tmp/my directory"

# Create a directory and some files for testing
mkdir -p "$DIR"
touch "$DIR/file1.txt" "$DIR/file with spaces.txt"

# Incorrect way to loop through files
for file in $DIR/*; do
  echo "Processing: $file"
  # ... process the file ...
  # This part will fail if the filename has spaces
  # because it will be split into multiple arguments.
  # Example:  cat "$DIR/file with spaces.txt" will fail
  # Consider using find to get all files in the directory
  # and handling the filenames correctly
done