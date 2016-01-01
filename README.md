![image](https://img.shields.io/imagelayers/layers/suckowbiz/proxy/latest.svg) ![image](https://img.shields.io/imagelayers/image-size/suckowbiz/proxy/latest.svg)  ![image](https://img.shields.io/docker/pulls/suckowbiz/proxy.svg) ![image](https://img.shields.io/github/license/suckowbiz/docker-proxy.svg)

# What is it?
A [Dockerfile](http://docs.docker.com/engine/reference/builder/) to serve a caching ([Squid](http://www.squid-cache.org/)), spam blocking ([Privoxy](http://www.privoxy.org/)) and anonymous ([Tor](https://www.torproject.org/)) HTTP proxy.

# How do I run it?
 1. Pull suckowbiz/proxy to make it available  
    `docker pull suckowbiz/proxy`
 2. Run a container that binds to [default route](https://en.wikipedia.org/wiki/Default_gateway) on port `3128` by executing:  
    `docker run -d -p 0.0.0.0:3128:3128 suckowbiz/proxy`  
 3. Configure your browser to use a `HTTP proxy` from `localhost` at port `3128` for `all protocols`
 4. Visit a page that displays your IP to make sure the proxy is set up properly. See [Google Search](https://www.google.de/#newwindow=1&q=my+wan+ip).

# Options
You might want to skip countries as being involved for proxying to circumnavigate censorships of any kind. To do so you might want to provide environment variable ***TOR_EXCLUDE_EXIT_NODES*** which follows the restrictions of TOR parameter *ExcludeExitNodes* (see [TOR manual](https://www.torproject.org/docs/tor-manual.html.en)). E.g. to skip GERMANY as an exit node start the proxy like:  
`docker run -d -p 0.0.0.0:3128:3128 -e TOR_EXCLUDE_EXIT_NODES="{de}" suckowbiz/proxy`

Note: This stuff is licensed under MIT to allow doing anything with proper attribution and without warranty.
