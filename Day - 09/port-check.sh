#!/bin/bash

HOST=$1
PORT=$2

if [ -z "$HOST" ] || [ -z "$PORT" ]; then
  echo "Usage: ./day-09-port-check.sh <host> <port>"
  exit 1
fi

echo "Checking port $PORT on $HOST..."
echo "-----------------------------------"

nc -z -w 3 $HOST $PORT

if [ $? -eq 0 ]; then
  echo "Port $PORT on $HOST is OPEN"
else
  echo "Port $PORT on $HOST is CLOSED"
fi