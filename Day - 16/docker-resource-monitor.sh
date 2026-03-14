#!/bin/bash

echo "=============================="
echo " Docker Container Resource Usage"
echo "=============================="
echo ""

docker stats --no-stream

echo ""
echo "Monitoring completed"