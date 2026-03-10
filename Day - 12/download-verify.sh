#!/bin/bash

URL=$1
EXPECTED_CHECKSUM=$2

if [ -z "$URL" ] || [ -z "$EXPECTED_CHECKSUM" ]; then
  echo "Usage: ./day-12-download-verify.sh <file-url> <expected-checksum>"
  exit 1
fi

FILE_NAME=$(basename "$URL")

echo "⬇Downloading file..."
curl -s -O "$URL"

echo "Calculating checksum..."
DOWNLOADED_CHECKSUM=$(sha256sum "$FILE_NAME" | awk '{print $1}')

echo "----------------------------------"
echo "Expected Checksum:   $EXPECTED_CHECKSUM"
echo "Downloaded Checksum: $DOWNLOADED_CHECKSUM"
echo "----------------------------------"

if [ "$EXPECTED_CHECKSUM" = "$DOWNLOADED_CHECKSUM" ]; then
  echo "Checksum verified. File is valid."
else
  echo "Checksum mismatch! File may be corrupted."
fi