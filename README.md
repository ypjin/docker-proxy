![image](https://img.shields.io/github/license/suckowbiz/docker-proxy.svg)

# What is it?
A [Dockerfile](http://docs.docker.com/engine/reference/builder/) to serve a caching ([Squid](http://www.squid-cache.org/)), spam blocking ([Privoxy](http://www.privoxy.org/)) and anonymizing ([Tor](https://www.torproject.org/)) HTTP proxy.

# How do I run it?
 1. Pull suckowbiz/proxy  
    `docker pull suckowbiz/proxy`
 2. Run a container that bind to [default route](https://en.wikipedia.org/wiki/Default_gateway) on port `3128` by executing:  
    `docker run -d -p 0.0.0.0:3128:3128 suckowbiz/proxy`  
 3. Configure your browser to use a `HTTP proxy` from `localhost` at port `3128` for `all protocols`
 4. Visit a page that displays your IP to make sure the proxy is set up properly. See [Google Search](https://www.google.de/#newwindow=1&q=my+wan+ip).

Note: This stuff is licensed under MIT to allow doing anything with proper attribution and without warranty.
