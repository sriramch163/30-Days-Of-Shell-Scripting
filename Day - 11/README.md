## Day 11 – DNS Resolution Checker

This script checks whether a domain resolves to an IP address using DNS.

Why this is useful:
Helps troubleshoot connectivity and domain resolution issues.

Usage:
./day-11-dns-check.sh <domain>


Example Output

If DNS works:

Checking DNS resolution for: github.com
---------------------------------------
github.com resolves to 140.82.121.4

If DNS fails:

DNS resolution failed for example-domain.com