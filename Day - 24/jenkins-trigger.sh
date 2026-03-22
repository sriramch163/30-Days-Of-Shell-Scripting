#!/bin/bash

JENKINS_URL=$1
JOB_NAME=$2
USER=$3
API_TOKEN=$4

if [ -z "$JENKINS_URL" ] || [ -z "$JOB_NAME" ] || [ -z "$USER" ] || [ -z "$API_TOKEN" ]; then
  echo "Usage: ./day-24-jenkins-trigger.sh <jenkins-url> <job-name> <user> <api-token>"
  exit 1
fi

echo "Triggering Jenkins job: $JOB_NAME"
echo "-------------------------------------"

curl -X POST "$JENKINS_URL/job/$JOB_NAME/build" \
  --user "$USER:$API_TOKEN"

if [ $? -eq 0 ]; then
  echo ""
  echo "Job triggered successfully"
else
  echo ""
  echo "Failed to trigger job"
fi