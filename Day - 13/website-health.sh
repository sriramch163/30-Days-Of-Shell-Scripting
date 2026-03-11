#!/bin/bash

URL=$1

if [ -z "$URL" ]; then
  echo "Usage: ./day-13-website-health.sh <url>"
  exit 1
fi

echo "Checking website status: $URL"
echo "---------------------------------"

STATUS=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

if [ "$STATUS" -eq 200 ]; then
  echo "Website is healthy (HTTP $STATUS)"
else
  echo "Website returned HTTP status $STATUS"
fi