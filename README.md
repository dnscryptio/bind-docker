# bind-docker
[![Build Status](https://travis-ci.org/dnscryptio/bind-docker.svg?branch=master)](https://travis-ci.org/dnscryptio/bind-docker)

This docker image provides bind installed in /opt/bind prefix. Default config launches a DNSSEC enabled recursing resolver. Requests are accepted from local IP ranges, with the idea being that the image is ment to provide a DNS service inside a docker network.
