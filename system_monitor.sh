#!/bin/bash

# ==================================
# Linux System Monitoring Script
# OS: Red Hat Enterprise Linux
# Author: Hazem
# ==================================

LOG_FILE="$HOME/system_monitor.log"
DATE=$(date "+%Y-%m-%d %H:%M:%S")

CPU_USAGE=$(top -bn1 | awk '/Cpu\(s\)/ {print 100 - $8}')
MEMORY_USAGE=$(free | awk '/Mem/ {printf "%.2f", $3/$2 * 100}')
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "[$DATE] CPU Usage: $CPU_USAGE%" >> $LOG_FILE
echo "[$DATE] Memory Usage: $MEMORY_USAGE%" >> $LOG_FILE
echo "[$DATE] Disk Usage: $DISK_USAGE%" >> $LOG_FILE

THRESHOLD=80
if [ "$DISK_USAGE" -ge "$THRESHOLD" ]; then
    echo "[$DATE] WARNING: Disk usage exceeded $THRESHOLD%" >> $LOG_FILE
fi

echo "---------------------------------" >> $LOG_FILE

