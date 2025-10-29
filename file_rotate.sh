#!/bin/bash
SOURCE="/home/kajal/Scripts/testfile.txt"
THRESHOLD=80
TIMESTAMP=$(date +"%Y-%m-%d_%H:%M:%S")
size=$(du -s $SOURCE | awk '{print $1}')
if [ "$size" -gt "$THRESHOLD" ]; then
	mv "$SOURCE" "${SOURCE}_$TIMESTAMP"
	gzip "${SOURCE}_$TIMESTAMP"
	touch $SOURCE
	echo "File rotated at $TIMESTAMP"
else
	echo "File size is under threshold"
fi	
