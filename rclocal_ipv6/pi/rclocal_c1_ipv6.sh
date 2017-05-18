#!/bin/bash
IF=eth0
IP=2017:db8::f101/120
GW=2017:db8::f1ff

ip r del default
ip -6 a a $IP dev $IF
ip l s $IF up
ip -6 r a default via $GW dev $IF
