#!/bin/bash

TARGET=$1

if [ -z "$TARGET" ]; then
  echo "Usage: ./day-25-sbom-syft.sh <image-name | directory>"
  exit 1
fi

echo "Generating SBOM for: $TARGET"
echo "----------------------------------"

syft "$TARGET" -o table

if [ $? -eq 0 ]; then
  echo ""
  echo "SBOM generated successfully"
else
  echo ""
  echo "Failed to generate SBOM"
fi