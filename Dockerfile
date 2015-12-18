#These instructions serve the purpose to provide a caching http proxy with anonymization and advertisment blocking features.
FROM ubuntu:wily
MAINTAINER Tobias Suckow <tobias@suckow.biz>

# get up to date to apply fixes and version updates
RUN apt-get update --quiet && apt-get install --quiet --yes --no-install-recommends \
    privoxy \
    squid \
    tor

# copy configuration files to apply custom changes 
WORKDIR /etc
RUN mkdir -p tor squid3 privoxy
COPY tor.conf tor/torrc
COPY squid.conf squid3/
COPY privoxy.conf privoxy/config

# copy entrypoint script to execute multiple services
WORKDIR /
COPY entrypoint.sh .
ENTRYPOINT ["/entrypoint.sh"]
