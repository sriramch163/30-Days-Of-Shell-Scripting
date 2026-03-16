#!/bin/bash

echo "=============================="
echo " Kubernetes Context Info"
echo "=============================="
echo ""

CURRENT_CONTEXT=$(kubectl config current-context)
CURRENT_NAMESPACE=$(kubectl config view --minify --output 'jsonpath={..namespace}')

if [ -z "$CURRENT_NAMESPACE" ]; then
  CURRENT_NAMESPACE="default"
fi

echo "Current Cluster Context : $CURRENT_CONTEXT"
echo "Current Namespace       : $CURRENT_NAMESPACE"

echo ""
echo "Kubernetes context check completed"