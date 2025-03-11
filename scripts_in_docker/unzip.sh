#!/bin/ash
ls -1 *.zip | sed -e 's/\.zip$//' > ../tmp/filename.txt
while read line
do
  unzip "../shared/$line.zip" -d ../tmp
  magick ../tmp/*.jpg "$line.pdf"
  rm ../tmp/*.jpg
  chown 1000:1000 "$line.pdf"
done < ../tmp/filename.txt
