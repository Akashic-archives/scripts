#!/bin/bash

input_dir="./videos"
output_dir="./audio"

mkdir -p "$output_dir"

for video_file in "$input_dir"/*; do
  if [[ -f "$video_file" ]]; then
    filename=$(basename "$video_file")
    filename_no_ext="${filename%.*}"
    
    ffmpeg -i "$video_file" -q:a 0 -map a "$output_dir/$filename_no_ext.mp3"
  fi
done

