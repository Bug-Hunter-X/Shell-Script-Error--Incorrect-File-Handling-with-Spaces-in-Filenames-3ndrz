#!/bin/bash

# This script correctly processes files in a directory,
# even those with spaces in their names.

DIR="/tmp/my directory"

# Create a directory and some files for testing
mkdir -p "$DIR"
touch "$DIR/file1.txt" "$DIR/file with spaces.txt"

# Correct way to loop through files using an array
files=("$(find "$DIR" -maxdepth 1 -type f -print0 | xargs -0)")

for file in "${files[@]}"; do
  echo "Processing: $file"
  # Now you can safely process each file
  # Example: cat "$file"
done

# Clean up the test directory
rm -rf "$DIR"