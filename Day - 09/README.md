## Day 9 – Port Availability Checker

This script checks whether a specific port on a host is open or closed.

Why this is useful:
Helps verify if services like web servers, SSH, or APIs are accessible.

Usage:
./day-09-port-check.sh <host> <port>

Example Output

If open:

Checking port 443 on google.com...
-----------------------------------
Port 443 on google.com is OPEN

If closed:

Port 8081 on localhost is CLOSED