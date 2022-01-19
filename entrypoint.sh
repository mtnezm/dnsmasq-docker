#!/bin/sh

dnsmasq --log-facility=/var/log/dnsmasq.log
tail -f /var/log/dnsmasq.log
