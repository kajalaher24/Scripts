#!/bin/bash
SOURCE="/home/kajal/Scripts/source"
cd "$FILES"
FILES=$(ls -1t | tail -n 4)
BKP="/home/kajal/Scripts/backup"
TIMESTAMP=$(date +"%Y-%m-%d_%H:%M:%S")
tar -czf "$BKP/backup_$TIMESTAMP.tar.gz" $FILES
echo "backup taken of $SOURCE dir at $BKP"
