#!/bin/sh
set -e -x

echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -F
iptables -t nat -F
iptables -X
iptables -t nat -A PREROUTING -p tcp --dport 8080 -j DNAT --to-destination 10.244.2.2:8080
iptables -t nat -A POSTROUTING -p tcp -d 10.244.2.2 --dport 8080 -j SNAT --to-source 192.168.50.4
