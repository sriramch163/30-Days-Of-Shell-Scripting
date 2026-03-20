#!/bin/bash

REPOS=(
  "/path/to/repo1"
  "/path/to/repo2"
  "/path/to/repo3"
)

echo "=============================="
echo " Git Auto Pull Script"
echo "=============================="
echo ""

for REPO in "${REPOS[@]}"
do
  if [ -d "$REPO/.git" ]; then
    echo "Updating repo: $REPO"
    cd "$REPO" || continue

    git pull

    echo "----------------------------------"
  else
    echo "Not a git repo: $REPO"
  fi
done

echo ""
echo "All repositories updated"