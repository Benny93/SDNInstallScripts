#!/bin/bash
ifconfig eth0 192.168.1.1 netmask 255.255.255.0 up
ip r a default via 192.168.1.254 dev eth0
