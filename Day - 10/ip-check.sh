#!/bin/bash

echo "=============================="
echo "   Network Information"
echo "=============================="

echo ""
echo "Public IP Address:"
curl -s ifconfig.me

echo ""
echo ""
echo "Private IP Address:"
hostname -I | awk '{print $1}'

echo ""
echo ""
echo "IP check completed"