# SDNInstallScripts

curl -L -O
raw.githubusercontent.com/Benny93/SDNInstallScripts/master/installOnos.sh


## Setup Network
Controller anycast addr:
sudo ifconfig lo:1 10.11.12.13 netmask 255.255.255.255 up

Client
ip r a 10.11.12.13 via <host-ip> dev eth0

#Kernel changes
sudo modprobe configs
show current setting

CONFIG_IP_ROUTE_MULTIPATH=y
