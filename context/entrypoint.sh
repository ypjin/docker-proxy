#!/bin/bash

SQUID=`which squid3` 
TOR=`which tor`

# start tor to "anonymously" send requests to wwww
TOR_OPTS=""
if [ -n "$TOR_EXCLUDE_EXIT_NODES" ] 
then
    TOR_OPTS="ExcludeExitNodes $TOR_EXCLUDE_EXIT_NODES"
fi 
#$TOR -f /etc/tor/torrc  1 $TOR_OPTS
service tor restart

# start privoxy to filter spam and mediate http proxy to socks proxy
service privoxy restart

# start squid to have a caching http proxy
# -N	foreground
# -d1	log level 1
exec $SQUID -N -d1
