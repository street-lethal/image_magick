#!/bin/ash
for file in *.zip; do
  line="${file%.zip}"
  unzip "../shared/$line.zip" -d ../tmp
  magick ../tmp/*.jpg -resize 3500x2500  -page a4 "$line.pdf"
  rm ../tmp/*.jpg
done
