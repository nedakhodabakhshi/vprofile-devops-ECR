#!/bin/bash
docker stop vp-web vp-app vp-db vp-memcache vp-mq
docker rm vp-web vp-app vp-db vp-memcache vp-mq
