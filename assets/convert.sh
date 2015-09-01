#!/bin/bash
#FILES=/Users/emmajane/Git/1234000002182/images/diagrams-source/*.svg
FILES=*.svg
for f in $FILES
do
  echo "Processing $f ..."
  # take action on each file. $f store current file name
  /Applications/Inkscape.app/Contents/Resources/bin/inkscape -D --export-width=1024 -y 1.0 --export-png $f.png $f
  
done
