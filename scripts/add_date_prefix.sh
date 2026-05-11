#!/usr/bin/bash
# add_date_prefix.sh — prepend today's date to every file in a given folder
# Usage: ./add_date_prefix.sh /path/to/folder

folder="$1"
today=$(date +%Y-%m-%d)

if [ ! -d "$folder" ]; then
    echo "Error: '$folder' is not a directory."
    exit 1
fi

for file in "$folder"/*; do
    filename=$(basename "$file")
    mv "$file" "$folder/${today}_${filename}"
    echo "Renamed: $filename -> ${today}_${filename}"
done
