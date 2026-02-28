#!/bin/bash

echo "Top 5 Memory Consuming Processes"
echo "-----------------------------------"

ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6