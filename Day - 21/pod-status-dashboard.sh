#!/bin/bash

echo "=============================="
echo " Kubernetes Pod Status Dashboard"
echo "=============================="
echo ""

kubectl get pods --all-namespaces --no-headers | awk '
{
  status=$4
  count[status]++
}
END {
  for (s in count) {
    printf "%-20s %d\n", s, count[s]
  }
}'

echo ""
echo "Status summary completed"