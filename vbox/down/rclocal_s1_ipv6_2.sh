#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    exit 1
fi
#enable ip forwarding
sysctl -w net.ipv6.conf.all.forwarding=1
ip -6 a a 2017:db8::ff01/120 dev enp0s$1
ip l s enp0s$1 up
echo "waiting ..."
sleep 3
ip -6 a d fe80::a00:27ff:feae:3d37/64 dev enp0s$1
#default routes
ip r del default
ifconfig
