FROM debian:8
MAINTAINER dnscrypt.io

ENV DEBIAN_FRONTEND=noninteractive

RUN set -x && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y bind9 && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 53/udp 53/tcp

ENTRYPOINT ["/usr/sbin/named"]
CMD ["-f -c /etc/bind/named.conf"]
