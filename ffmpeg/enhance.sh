#!/bin/bash

#for file in *.CR3; do
#    ffmpeg -i "$file" "${file%.CR3}.png"
#done

#for file in *.png; do
#    convert "$file" -sharpen 0x1 -brightness-contrast 10x20 "${file%.png}_enhanced.png"
#done

enhance_image() {
    local file="$1"
    convert "$file" -sharpen 3x0 "${file%.png}_enhanced.png"
    #convert "$file" -sharpen 0x1 -brightness-contrast 10x20 "${file%.png}_enhanced.png"
}

export -f enhance_image

find . -name "*.png" | parallel -j 6 enhance_image

