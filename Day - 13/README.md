## Day 13 – Website Health Checker

This script checks whether a website or API endpoint is returning HTTP 200.

Why this is useful:
Helps verify application availability and detect service failures.

Usage:
./day-13-website-health.sh <url>




Example Output

Healthy site:

Checking website status: https://google.com
---------------------------------
Website is healthy (HTTP 200)

If not healthy:

Website returned HTTP status 500