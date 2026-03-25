#!/bin/bash

DIR=${1:-.}

if [ ! -d "$DIR" ]; then
  echo "Directory not found: $DIR"
  exit 1
fi

echo "=============================="
echo " Terraform Format & Validate"
echo "=============================="
echo ""

echo "Formatting Terraform files..."
terraform fmt -recursive "$DIR"

echo ""
echo "Validating Terraform configuration..."
terraform validate "$DIR"

if [ $? -eq 0 ]; then
  echo ""
  echo "Terraform configuration is valid"
else
  echo ""
  echo "Validation failed"
fi