#!/usr/bin/env bash
docker rm proxy || true
docker run \
 --rm=true \
 --publish 0.0.0.0:3128:3128 \
 --name proxy \
 suckowbiz/proxy 
