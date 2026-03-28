## Day 30 – Full System Health Check

This script performs a complete system and DevOps health check including CPU, memory, disk, Docker, Kubernetes, and network status.

Why this is useful:
Provides a quick overview of system health for troubleshooting and monitoring.

Usage:
./day-30-full-health-check.sh




Example Output (Shortened)
=====================================
   Full System & DevOps Health Check
=====================================

🖥 CPU Usage:
10.5%

Memory Usage:
Mem: 7.6G used 3.2G free 4.4G

Disk Usage:
/dev/sda1  50G  20G  28G  42%

Docker Status:
nginx   Up 2 hours

Kubernetes Context:
dev-cluster

🌐 Network Check:
Network is reachable

=====================================
Full health check completed
=====================================