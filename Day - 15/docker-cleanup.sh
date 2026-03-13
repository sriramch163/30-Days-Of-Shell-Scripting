#!/bin/bash

echo "=============================="
echo " Docker Unused Images Cleaner"
echo "=============================="
echo ""

echo "Checking unused Docker images..."
docker image prune -f

echo ""
echo "Cleanup completed"