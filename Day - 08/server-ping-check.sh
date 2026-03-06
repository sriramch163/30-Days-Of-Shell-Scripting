#!/bin/bash

SERVERS=("google.com" "github.com" "8.8.8.8" "localhost")

echo "Checking server connectivity..."
echo "-----------------------------------"

for SERVER in "${SERVERS[@]}"
do
  ping -c 1 $SERVER > /dev/null 2>&1

  if [ $? -eq 0 ]; then
    echo "$SERVER is reachable"
  else
    echo "$SERVER is not reachable"
  fi
done