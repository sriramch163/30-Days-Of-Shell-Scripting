## Day 15 – Docker Unused Images Cleaner

This script removes unused Docker images to free disk space.

Why this is useful:
Docker hosts accumulate unused images over time, which can lead to disk space issues.

Usage:
./day-15-docker-cleanup.sh


Example Output
==============================
 Docker Unused Images Cleaner
==============================

Checking unused Docker images...

Deleted Images:
untagged: myapp:old
deleted: sha256:12345abc...

Total reclaimed space: 450MB

Cleanup completed