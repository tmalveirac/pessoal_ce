#!/bin/bash

FOLDER="./dados/"
FILENAME="201801.csv"
OUT_FILENAME="servidores_2018.csv"

HEADER="$(head -1 $FOLDER$FILENAME);ref"

#Insert Header
$(echo $HEADER > $FOLDER$OUT_FILENAME)


#Insert FileName
for f in $FOLDER??????.csv;
  do
    NAME=$(echo $f | tr -dc '0-9')
    $(sed -i "s/$/;$NAME/g" $f)
  done
 
#Insert Content
$(tail -n +2 -q $FOLDER??????.csv >> $FOLDER$OUT_FILENAME)



