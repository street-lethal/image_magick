#!/bin/ash
cd ../input
ls -1 *.jpg | sed -e 's/\.jpg$//' > ../tmp/filename.txt
while read line
do
  magick "$line.jpg" -crop 900x1200+510+0 "../output/$line.jpg"
  chown 1000:1000 "../output/$line.jpg"
done < ../tmp/filename.txt
