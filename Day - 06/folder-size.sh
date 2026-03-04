#!/bin/bash

TARGET_DIR=$1

if [ -z "$TARGET_DIR" ]; then
  echo "Usage: ./day-06-folder-size.sh <directory-path>"
  exit 1
fi

if [ ! -d "$TARGET_DIR" ]; then
  echo "Directory not found: $TARGET_DIR"
  exit 1
fi

echo "Analyzing folder sizes in: $TARGET_DIR"
echo "------------------------------------------"

du -h --max-depth=1 "$TARGET_DIR" 2>/dev/null | sort -hr