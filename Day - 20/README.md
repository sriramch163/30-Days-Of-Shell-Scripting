## Day 20 – Kubernetes Logs Fetcher

This script fetches logs from all pods in a namespace using a label selector.

Why this is useful:
Helps debug applications running across multiple pod replicas.

Usage:
./day-20-k8s-logs.sh <namespace> <label>


Example Output
Fetching logs for pods in namespace: default with label: app=myapp
--------------------------------------------------------------

Logs for Pod: myapp-abc123
----------------------------------
App started successfully
Connected to DB

Logs for Pod: myapp-def456
----------------------------------
Error: DB connection timeout

Logs fetched successfully