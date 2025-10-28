#!/bin/bash
Service="containerd"
Log="/home/kajal/Scripts/var.log"
Timestamp=$(date +"%Y-%m-%d %H:%M:%S")
health=$(systemctl is-active $Service)
if [ $health = "active" ] ; then
	echo "$Timestamp = $Service is up and running " >> "$Log"
else
	echo "$Timestamp = $Service is down" >> "$Log"
fi
