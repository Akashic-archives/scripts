#!/bin/bash

mkdir -p "../output"

encode_video() {
	local file="$1"
	ffmpeg -i "$file" -c:v libx265 -c:a copy ../output/"${file%.mp4}.mp4"

export -f encode_video

find . -name "*.mp4" | parallel -j 6 encode_video

