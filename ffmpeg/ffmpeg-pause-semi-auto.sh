#!/bin/bash

input_dir="./videos"
output_dir="./audio"
temp_dir="./temp"

mkdir -p "$output_dir"
mkdir -p "$temp_dir"

for video_file in "$input_dir"/*; do
  if [[ -f "$video_file" ]]; then
    mv "$video_file" "$temp_dir"
    filename=$(basename "$video_file")
    filename_no_ext="${filename%.*}"
    
    ffmpeg -i "$video_file" -q:a 0 -map a "$output_dir/$filename_no_ext.mp3"
    rm "$video_file" temp/"$video_file"
  fi
done

