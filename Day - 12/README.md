
## Day 12 – File Download and Checksum Verification

This script downloads a file and verifies its SHA256 checksum to ensure file integrity.

Why this is useful:
Helps confirm that downloaded files are not corrupted or tampered with.

Usage:
./day-12-download-verify.sh <file-url> <expected-checksum>


Example Output
Downloading file...
Calculating checksum...

Expected Checksum:   abc123
Downloaded Checksum: abc123

Checksum verified. File is valid.

If mismatch:

Checksum mismatch! File may be corrupted.