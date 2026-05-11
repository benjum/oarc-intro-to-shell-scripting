#!/usr/bin/bash
# organize.sh — sort files in the current directory into subfolders by extension

for file in *.*; do
    # Skip if no matching files (literal "*.*" case)
    [ -e "$file" ] || continue

    # Extract extension (everything after the last dot)
    ext="${file##*.}"

    # Make a folder for that extension if it doesn't exist
    mkdir -p "$ext"

    # Copied the file
    cp "$file" "$ext/"
    echo "Copied $file -> $ext/"
done