#!/bin/bash
#enable ip forwarding
sysctl -w net.ipv4.ip_forward=1
ifconfig eth0 192.168.1.254 netmask 255.255.255.0 up
ifconfig eth1 192.168.2.254 netmask 255.255.255.0 up
ifconfig eth2 192.168.3.254 netmask 255.255.255.0 up
ip r a 10.11.12.13 nexthop via 192.168.2.1 dev eth1 nexthop via 192.168.3.1 dev eth2
