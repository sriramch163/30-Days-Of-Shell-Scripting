#!/bin/bash

USERNAME=$1
PASSWORD=$2

if [ -z "$USERNAME" ] || [ -z "$PASSWORD" ]; then
  echo "Usage: sudo ./day-04-create-user.sh <username> <password>"
  exit 1
fi

if id "$USERNAME" &>/dev/null; then
  echo "⚠️ User $USERNAME already exists"
else
  useradd -m "$USERNAME"
  echo "$USERNAME:$PASSWORD" | chpasswd
  echo "✅ User $USERNAME created and password set"
fi