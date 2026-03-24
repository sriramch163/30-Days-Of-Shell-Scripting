#!/bin/bash

IMAGE=$1

if [ -z "$IMAGE" ]; then
  echo "Usage: ./day-26-grype-scan.sh <image-name>"
  exit 1
fi

echo "Scanning image for vulnerabilities: $IMAGE"
echo "----------------------------------------------"

grype "$IMAGE" --fail-on high

if [ $? -eq 0 ]; then
  echo ""
  echo "No HIGH/CRITICAL vulnerabilities found"
else
  echo ""
  echo "Vulnerabilities detected (HIGH/CRITICAL)"
fi