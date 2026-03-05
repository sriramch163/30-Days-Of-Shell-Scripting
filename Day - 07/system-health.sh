#!/bin/bash

echo "=============================="
echo "   System Health Report"
echo "=============================="

echo ""
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}'

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h | grep -v "tmpfs"

echo ""
echo "Health check completed"