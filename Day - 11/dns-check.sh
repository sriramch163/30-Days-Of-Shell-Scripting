#!/bin/bash

DOMAIN=$1

if [ -z "$DOMAIN" ]; then
  echo "Usage: ./day-11-dns-check.sh <domain>"
  exit 1
fi

echo "Checking DNS resolution for: $DOMAIN"
echo "---------------------------------------"

IP=$(dig +short $DOMAIN | head -n 1)

if [ -z "$IP" ]; then
  echo "DNS resolution failed for $DOMAIN"
else
  echo "$DOMAIN resolves to $IP"
fi