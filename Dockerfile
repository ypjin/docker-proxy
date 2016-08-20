# These instructions serve the purpose to set up a HTTP proxy that can be used to anonymize web browsing (besides it caches content and blocks spam).
FROM ubuntu:16.04

MAINTAINER Tobias Suckow <tobias@suckow.biz>

RUN apt-get update --quiet \
 && apt-get upgrade --yes \
 && apt-get install --quiet --yes --no-install-recommends \
    privoxy \
    squid \
    tor \
    tor-geoipdb

COPY context /
ENTRYPOINT ["/entrypoint.sh"]
