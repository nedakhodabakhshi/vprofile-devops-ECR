#!/bin/bash
cd /home/ubuntu/vprofile

docker build -t vp-web ./vp-web
docker build -t vp-app ./vp-app
docker build -t vp-db ./vp-db
docker build -t vp-mq ./vp-mq
docker build -t vp-memcache ./vp-memcache

docker run -d --name vp-db -e MYSQL_ROOT_PASSWORD=rootpassword -e MYSQL_DATABASE=wordpress -e MYSQL_USER=wpuser -e MYSQL_PASSWORD=wppassword -p 3306:3306 vp-db
docker run -d --name vp-memcache -p 11211:11211 vp-memcache
docker run -d --name vp-mq -p 5672:5672 -p 15672:15672 vp-mq
docker run -d --name vp-app --link vp-db --link vp-memcache --link vp-mq -p 8080:8080 vp-app
docker run -d --name vp-web --link vp-app -p 80:8080 vp-web
