#!/bin/ash
ls -1 *.zip | sed -e 's/\.zip$//' > ../tmp/filename.txt
while read line
do
  unzip "../shared/$line.zip" -d ../tmp
  cd ../tmp
  for j in *.jpg
  do
    magick "$j" -brightness-contrast 5% brighten_"$j"
  done
  cd -
  magick ../tmp/brighten_*.jpg "$line.pdf"
  rm ../tmp/*.jpg
done < ../tmp/filename.txt
