#!/bin/bash

NAMESPACE=$1
LABEL=$2

if [ -z "$NAMESPACE" ] || [ -z "$LABEL" ]; then
  echo "Usage: ./day-20-k8s-logs.sh <namespace> <label>"
  echo "Example: ./day-20-k8s-logs.sh default app=myapp"
  exit 1
fi

echo "Fetching logs for pods in namespace: $NAMESPACE with label: $LABEL"
echo "--------------------------------------------------------------"

PODS=$(kubectl get pods -n "$NAMESPACE" -l "$LABEL" -o jsonpath='{.items[*].metadata.name}')

for POD in $PODS
do
  echo ""
  echo "Logs for Pod: $POD"
  echo "----------------------------------"
  kubectl logs -n "$NAMESPACE" "$POD" --tail=20
done

echo ""
echo "Logs fetched successfully"