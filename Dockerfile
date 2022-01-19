FROM alpine:latest

LABEL maintainer="mtnezm@linux.com"

RUN apk update && \
    apk add dnsmasq

VOLUME /etc/dnsmasq.d

EXPOSE 53/udp

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/bin/sh","-c","/entrypoint.sh"]
