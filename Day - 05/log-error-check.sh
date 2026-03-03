#!/bin/bash

LOGFILE=$1

if [ -z "$LOGFILE" ]; then
  echo "Usage: ./day-05-log-error-check.sh <log-file-path>"
  exit 1
fi

if [ ! -f "$LOGFILE" ]; then
  echo "File not found: $LOGFILE"
  exit 1
fi

echo "Scanning log file: $LOGFILE"
echo "----------------------------------"

grep -iE "error|failed|critical" "$LOGFILE"

if [ $? -ne 0 ]; then
  echo "No critical errors found"
fi