#!/bin/bash
LOG="top_process_$(date +%F_%H_%M_%S).log"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6 >> $LOG
echo "Report generated and saved to $LOG"
