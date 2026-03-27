#!/bin/bash

REQUIRED_VARS=("DB_HOST" "DB_USER" "DB_PASS" "API_KEY")

echo "=============================="
echo " Environment Variable Check"
echo "=============================="
echo ""

MISSING=0

for VAR in "${REQUIRED_VARS[@]}"
do
  if [ -z "${!VAR}" ]; then
    echo "$VAR is NOT set"
    MISSING=1
  else
    echo "$VAR is set"
  fi
done

echo ""

if [ $MISSING -eq 1 ]; then
  echo "Some required environment variables are missing"
  exit 1
else
  echo "All required environment variables are set"
fi