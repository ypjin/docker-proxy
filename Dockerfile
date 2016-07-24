# These instructions serve the purpose to set up a HTTP proxy that can be used to anonymize web browsing (besides it caches content and blocks spam).
FROM ubuntu:xenial
MAINTAINER Tobias Suckow <tobias@suckow.biz>

# Install the proxy chain.
RUN apt-get update --quiet && apt-get install --quiet --yes --no-install-recommends \
    privoxy \
    squid \
    tor \
    tor-geoipdb

# Copy scripts and configs to set up the proxy chain.
COPY context/entrypoint.sh /entrypoint.sh
COPY context/etc/privoxy/config /etc/privoxy/config
COPY context/etc/privoxy/match-all.action /etc/privoxy/match-all.action
COPY context/etc/squid/squid.conf /etc/squid/squid.conf

ENTRYPOINT ["/entrypoint.sh"]
