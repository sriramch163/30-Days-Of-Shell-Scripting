## Day 19 – Kubernetes Pod Restart Checker

This script lists pods with restart counts greater than zero.

Why this is useful:
Helps identify unstable or crashing containers in a Kubernetes cluster.

Usage:
./day-19-pod-restarts.sh


Example Output
==============================
 Kubernetes Pod Restart Check
==============================

default    my-app-abc123     3
prod       payment-api       1

Restart check completed