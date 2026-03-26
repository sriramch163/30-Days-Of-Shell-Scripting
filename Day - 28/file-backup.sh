#!/bin/bash

FILE=$1

if [ -z "$FILE" ]; then
  echo "Usage: ./day-28-file-backup.sh <file>"
  exit 1
fi

if [ ! -f "$FILE" ]; then
  echo "File not found: $FILE"
  exit 1
fi

TIMESTAMP=$(date +%Y%m%d-%H%M%S)
BACKUP_FILE="${FILE}_$TIMESTAMP"

cp "$FILE" "$BACKUP_FILE"

echo "Backup created: $BACKUP_FILE"