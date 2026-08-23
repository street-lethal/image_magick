#!/bin/ash
cd ../input
for line in *.jpg; do
  #magick "$line" -crop 900x1200+510+0 "../output/$line"

  # novel
  magick "$line" -crop 852x1200+534+0 "../output/$line"
done
