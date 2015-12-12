#!/usr/bin/env bash
docker rm proxy 2>&1 > /dev/null || true
docker run \
 --detach=true \
 --name proxy \
 --publish 0.0.0.0:3128:3128 \
 suckowbiz/proxy 
