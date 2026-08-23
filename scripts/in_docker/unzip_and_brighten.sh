#!/bin/ash
for file in *.zip; do
  line="${file%.zip}"
  unzip "../shared/$line.zip" -d ../tmp
  cd ../tmp
  for j in *.jpg
  do
    magick "$j" -brightness-contrast 5% brighten_"$j"
  done
  cd -
  magick ../tmp/brighten_*.jpg "$line.pdf"
  rm ../tmp/*.jpg
done
