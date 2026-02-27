#!/bin/bash

THRESHOLD=80

echo "Checking disk usage..."

df -hP | awk 'NR>1 {print $5 " " $6}' | while read output;
do
  usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
  partition=$(echo $output | awk '{print $2}')

  if [ "$usage" -ge "$THRESHOLD" ]; then
    echo "ALERT: Disk usage on $partition is ${usage}%"
  else
    echo "$partition is healthy (${usage}%)"
  fi
done