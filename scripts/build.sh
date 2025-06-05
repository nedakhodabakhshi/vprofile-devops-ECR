#!/bin/bash
set -e

REPO_URI=557690612191.dkr.ecr.us-east-1.amazonaws.com/vprofile-repo

echo "Building vProfile Tomcat image..."
docker build -t $REPO_URI:tomcat ./vprofile-app

echo "Pushing image to ECR..."
docker push $REPO_URI:tomcat
