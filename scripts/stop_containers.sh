#!/bin/bash
echo "Stopping any running containers..."
docker stop $(docker ps -q) || true
docker rm $(docker ps -a -q) || true
