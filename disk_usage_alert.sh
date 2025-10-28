#!/bin/bash
THRESHOLD=4
disk=$(df -kh /dev | awk 'NR==2 {print $5}' | sed 's/%//' ) 
if [ $disk -gt $THRESHOLD ] ; then
	echo "Disk usage is exceeded: $disk%"
else
	echo "Disk space is normal $disk"
fi
