#!/bin/bash

count=100  # Starting number for renaming
for file in *; do
  extension="${file##*.}"  # Get the file extension
  new_name="$count.$extension"  # Generate the new name with the current count and extension
  mv -i "$file" "$new_name"  # Rename the file
  ((count++))  # Increment the count for the next file
done

