#!/bin/bash

echo "====================================="
echo "   Full System & DevOps Health Check"
echo "====================================="

# CPU Usage
echo ""
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}'

# Memory Usage
echo ""
echo "Memory Usage:"
free -h

# Disk Usage
echo ""
echo "📀 Disk Usage:"
df -h | grep -v "tmpfs"

# Docker Status
echo ""
echo "Docker Status:"
if command -v docker &>/dev/null; then
  docker ps --format "table {{.Names}}\t{{.Status}}"
else
  echo "Docker not installed"
fi

# Kubernetes Context
echo ""
echo "Kubernetes Context:"
if command -v kubectl &>/dev/null; then
  kubectl config current-context
else
  echo "kubectl not installed"
fi

# Network Check
echo ""
echo "🌐 Network Check (google.com):"
ping -c 1 google.com &>/dev/null

if [ $? -eq 0 ]; then
  echo "Network is reachable"
else
  echo "Network issue detected"
fi

echo ""
echo "====================================="
echo "Full health check completed"
echo "====================================="
