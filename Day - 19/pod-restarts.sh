#!/bin/bash

echo "=============================="
echo " Kubernetes Pod Restart Check"
echo "=============================="
echo ""

kubectl get pods --all-namespaces \
  --no-headers \
  -o custom-columns="NAMESPACE:.metadata.namespace,NAME:.metadata.name,RESTARTS:.status.containerStatuses[*].restartCount" \
| awk '$3 > 0 {print "" $0}'

echo ""
echo "Restart check completed"