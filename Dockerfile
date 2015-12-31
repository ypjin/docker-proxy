#These instructions serve the purpose to provide a caching http proxy with anonymization and advertisment blocking features.
FROM ubuntu:wily
MAINTAINER Tobias Suckow <tobias@suckow.biz>

# get up to date to apply fixes and version updates
RUN apt-get update --quiet && apt-get install --quiet --yes --no-install-recommends \
    privoxy \
    squid \
    tor \
    tor-geoipdb

COPY context .
ENTRYPOINT ["/entrypoint.sh"]
