#!/bin/bash

# Set the name of the output file
output_file="commits.txt"

# Set the delimiter for each commit
delimiter="----------------------"

# Navigate to the repo directory
cd /path/to/repo

# Initialize an empty output file
> $output_file

# Loop through each commit in the repo
git log --pretty=format:"%h - %an, %ar : %s" --since=30.days | while read -r line; do
  # Append the delimiter and commit information to the output file
  echo "$delimiter" >> $output_file
  echo "$line" >> $output_file
done

echo "Commits exported to $output_file"

