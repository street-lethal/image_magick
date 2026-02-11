#!/bin/ash
ls -1 *.zip | sed -e 's/\.zip$//' > ../tmp/filename.txt
while read line
do
  unzip "../shared/$line.zip" -d ../tmp
  magick ../tmp/*.jpg -resize 3500x2500  -page a4 "$line.pdf"
  rm ../tmp/*.jpg
done < ../tmp/filename.txt
