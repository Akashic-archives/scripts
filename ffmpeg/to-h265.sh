#!/bin/bash

input_dir="./videos"
output_dir="./video-h265"

mkdir -p "$output_dir"

for video_file in "$input_dir"/*; do
  if [[ -f "$video_file" ]]; then
    filename=$(basename "$video_file")
    filename_no_ext="${filename%.*}"
    
    ffmpeg -i "$video_file" -c:v libx265 -c:a copy "$output_dir/$filename_no_ext.mp4"
  fi
done

