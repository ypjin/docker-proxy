#!/bin/bash
set -e

# start to "anonymously" send requests to wwww
echo "Restaring tor..."
service tor restart

# start privoxy to filter spam and mediate http proxy to socks proxy
echo "Restarting provoxy..."
service privoxy restart

# start squid to have a caching http proxy
# -N	foreground
# -d1	log level 1
echo "Running squid..."
exec /usr/sbin/squid3 -N -d1
