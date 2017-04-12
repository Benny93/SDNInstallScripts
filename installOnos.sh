#!/bin/bash

#install onos
ONOS_VERSION=1.9.0

cd /opt

sudo wget -c http://downloads.onosproject.org/release/onos-$ONOS_VERSION.tar.gz
sudo tar xzf onos-$ONOS_VERSION.tar.gz
sudo mv onos-$ONOS_VERSION onos

#running onos
/opt/onos/bin/onos-service start

