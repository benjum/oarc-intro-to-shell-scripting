#!/usr/bin/bash
# count_lines.sh — count lines in every .csv file in a folder, save a summary
# Usage: ./count_lines.sh /path/to/data

data_dir="$1"
output="line_counts.txt"

# Clear any previous output
> "$output"

for file in "$data_dir"/*.csv; do
    if [ -f "$file" ]; then
        lines=$(wc -l < "$file")
        echo "$(basename "$file"): $lines lines" >> "$output"
    fi
done

echo "Done. Summary written to $output"