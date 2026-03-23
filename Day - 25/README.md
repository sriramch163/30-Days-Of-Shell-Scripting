## Day 25 – SBOM Generator using Syft

This script generates a Software Bill of Materials (SBOM) for a Docker image or directory.

Why this is useful:
Helps identify dependencies and is essential for security and compliance.

Usage:
./day-25-sbom-syft.sh <image-name | directory>





Example Output
NAME        VERSION     TYPE
openssl     1.1.1       deb
libc6       2.31        deb
curl        7.68.0      deb