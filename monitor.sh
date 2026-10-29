
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

