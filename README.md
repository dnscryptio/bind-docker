# bind-docker

This docker image provides bind installed in /opt/bind prefix. Default config launches a DNSSEC enabled recursing resolver. Requests are accepted from local IP ranges, with the idea being that the image is ment to provide a DNS service inside a docker network.

Todo:
- sudo to unpriv user
- copy config into image during build
- allow local net recursion by default
- validate download via isc gpg fingerprint
- build proper rndc key when new container is created (if this is a problem...?)
