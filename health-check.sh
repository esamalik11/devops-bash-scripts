#!/bin/bash

SERVER_NAME=$(hostname)
CURRENT_USER=$(whoami)
CURRENT_DATE=$(date)
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}')
MEMORY_USAGE=$(free | awk 'NR==2 {printf "%.1f%%", $3/$2*100}')
CPU_LOAD=$(uptime | awk '{print $NF}')

echo "=============================="
echo "   SYSTEM HEALTH REPORT"
echo "=============================="
echo "Server    : $SERVER_NAME"
echo "User      : $CURRENT_USER"
echo "Date      : $CURRENT_DATE"
echo "Disk Used : $DISK_USAGE"
echo "Memory    : $MEMORY_USAGE"
echo "CPU Load  : $CPU_LOAD"
echo "=============================="
