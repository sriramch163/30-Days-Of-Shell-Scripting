#!/bin/bash

echo "=============================="
echo " Git Merged Branch Cleanup"
echo "=============================="
echo ""

# Make sure we are on main branch
git checkout main 2>/dev/null

# Get merged branches and delete them (excluding main)
for BRANCH in $(git branch --merged | grep -v "\*" | grep -v "main")
do
  echo " Deleting branch: $BRANCH"
  git branch -d "$BRANCH"
done

echo ""
echo "Cleanup completed"