#!/bin/bash
#enable ip forwarding
sysctl -w net.ipv4.ip_forward=1
ifconfig enp0s8 192.168.2.1 netmask 255.255.255.0 up
sudo ip r del default
ip r a default via 192.168.2.254 dev enp0s8
#anycast address
ifconfig lo:1 10.11.12.13 netmask 255.255.255.255 up
