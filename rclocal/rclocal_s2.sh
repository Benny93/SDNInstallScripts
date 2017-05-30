#!/bin/bash
#enable ip forwarding
sysctl -w net.ipv4.ip_forward=1
ifconfig eth0 192.168.3.1 netmask 255.255.255.0 up
ip r a default via 192.168.3.254 dev eth0
#anycast address
ifconfig lo:1 10.11.12.13 netmask 255.255.255.255 up
