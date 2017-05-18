#!/bin/bash
IF=eth0
IP=2017:db8::f301/120
GW=2017:db8::f3ff
ANYCAST=2017:db8::ffaa/120

#enable ip forwarding
sysctl -w net.ipv6.conf.all.forwarding=1
ip -6 a a $IP dev $IF
#anycast address
ip -6 a a $ANYCAST dev lo
ip l s $IF up
#default routes
ip r del default
ip -6 r a default via $GW dev $IF
