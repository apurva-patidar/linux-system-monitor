
#!/bin/bash

# Linux System Monitoring Tool

LOG_FILE="monitor.log"

{
    echo "=================================="
    echo "     LINUX SYSTEM MONITOR"
    echo "=================================="

    echo "Hostname: $(hostname)"
    echo "Date: $(date)"

    echo ""
    echo "----- CPU LOAD -----"
    uptime

    echo ""
    echo "----- MEMORY USAGE -----"
    free -h

    echo ""
    echo "----- DISK USAGE -----"
    df -h /

    echo ""
    echo "----- TOP 5 PROCESSES -----"
    ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6

    echo ""
    echo "Monitoring report completed."
    echo ""
} | tee -a "$LOG_FILE"

echo ""
echo "----- RESOURCE USAGE ALERTS -----"

# Check memory usage
MEMORY_USAGE=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')

if [ "$MEMORY_USAGE" -ge 80 ]; then
    echo "WARNING: High memory usage: ${MEMORY_USAGE}%"
else
    echo "Memory usage is normal: ${MEMORY_USAGE}%"
fi

# Check root disk usage
DISK_USAGE=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')

if [ "$DISK_USAGE" -ge 80 ]; then
    echo "WARNING: High disk usage: ${DISK_USAGE}%"
else
    echo "Disk usage is normal: ${DISK_USAGE}%"
fi


