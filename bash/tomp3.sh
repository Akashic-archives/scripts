#!/bin/sh

OUTPUT_DIR=./mp3

#IFS=$'\n'  # split only on newlines
for FILE in *
do
    FILENAME="${FILE}"
    ffmpeg -i  "$FILE" "mp3/$FILENAME.mp3"
    #echo $FILENAME
done
