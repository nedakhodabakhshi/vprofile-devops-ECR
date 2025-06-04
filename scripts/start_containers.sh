#!/bin/bash
cd /home/ubuntu/vprofile

# Run containers using pulled ECR images (make sure to use correct tags or latest)
docker run -d --name mysql nedakh126/vp-db-new
docker run -d --name memcache nedakh126/vp-memcache-new
docker run -d --name rabbitmq nedakh126/vp-mq-new
docker run -d --name tomcat-app nedakh126/vp-app-new
docker run -d -p 8080:8080 --name tomcat-web nedakh126/vp-web-new
