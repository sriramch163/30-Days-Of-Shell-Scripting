#!/bin/bash

IMAGE_NAME=$1

if [ -z "$IMAGE_NAME" ]; then
  echo "Usage: ./day-17-docker-build.sh <image-name>"
  exit 1
fi

TIMESTAMP=$(date +%Y%m%d-%H%M)

TAG="$IMAGE_NAME:$TIMESTAMP"

echo "Building Docker image..."
echo "Image Tag: $TAG"

docker build -t "$TAG" .

echo ""
echo "Docker image built successfully: $TAG"