#!/bin/bash

SERVICE=$1

if [ -z "$SERVICE" ]; then
  echo "Usage: ./day-03-service-check.sh <service-name>"
  exit 1
fi

echo "🔍 Checking status of service: $SERVICE"
echo "--------------------------------------"

if systemctl list-units --type=service | grep -q "$SERVICE"; then

  STATUS=$(systemctl is-active $SERVICE)

  if [ "$STATUS" = "active" ]; then
    echo "$SERVICE is running"
  else
    echo "$SERVICE is not running"
  fi

else
  echo "Service $SERVICE not found"
fi