#!/bin/bash
IP1=2017:db8::f1ff/120
IP2=2017:db8::f2ff/120
IP3=2017:db8::f3ff/120

#enable ip forwarding
sysctl -w net.ipv6.conf.all.forwarding=1
ip -6 a a $IP1 dev enp0s8
ip l s enp0s8 up
ip -6 a a $IP2 dev enp0s9
ip l s enp0s9 up
ip -6 a a $IP3  dev enp0s10
ip l s enp0s10 up
#nexthops
sudo ip -6 r a 2017:db8::ffaa nexthop via 2017:db8::f201 dev enp0s9 nexthop via 2017:db8::f301 dev enp0s10
