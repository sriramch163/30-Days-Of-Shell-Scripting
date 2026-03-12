#!/bin/bash

echo "=============================="
echo " Active Network Connections"
echo "=============================="
echo ""

ss -tulnp

echo ""
echo "Network check completed"