## Day 26 – Docker Image Vulnerability Scanner

This script scans a Docker image for vulnerabilities using Grype.

Why this is useful:
Helps detect security issues before deploying applications.

Usage:
./day-26-grype-scan.sh <image-name>





Example Output

If issues exist:

NAME        INSTALLED  FIXED-IN  TYPE  VULNERABILITY   SEVERITY
openssl     1.1.1      1.1.1k    deb   CVE-2023-1234   HIGH