#!/bin/bash
echo " .......Analyze system usage......"
Date=$(date "+%Y-%m-%d %H:%M:%S")
Logfile="$HOME/system_monitor/system_usage.log"
echo -e "System Usage Report -$Date" >> Logfile

# CPU Usage
echo -e "CPU Usage"
top -bn1 |grep "Cpu"

echo -e "Memory Usage"
free -h 

echo " Disk Usage"
df -h 


