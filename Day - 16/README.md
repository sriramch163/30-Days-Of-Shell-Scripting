## Day 16 – Docker Container Resource Monitor

This script displays resource usage statistics for running Docker containers.

Why this is useful:
Helps identify containers consuming high CPU or memory.

Usage:
./day-16-docker-resource-monitor.sh

Example Output
==============================
 Docker Container Resource Usage
==============================

CONTAINER ID   NAME       CPU %   MEM USAGE / LIMIT     MEM %
a123bc45d6     nginx      0.20%   12MiB / 1GiB          1.2%
f234cd56e7     redis      0.50%   25MiB / 1GiB          2.5%

Monitoring completed