SCRIPT_ROUTER='rclocal_router_ipv6.sh'
SCRIPT_CTL1='rclocal_s1_ipv6.sh'
SCRIPT_CTL2='rclocal_s2_ipv6.sh'
SCRIPT_SWITCH='rclocal_c1_ipv6.sh'

PORT_ROUTER=2221
PORT_CTL1=2222
PORT_CTL2=2223
PORT_SWITCH=2224

#downloads
scp -P $PORT_ROUTER ubuntu@127.0.0.1:~/$SCRIPT_ROUTER down/.
scp -P $PORT_CTL1 ubuntu@127.0.0.1:~/$SCRIPT_CTL1 down/.
scp -P $PORT_CTL2 ubuntu@127.0.0.1:~/$SCRIPT_CTL2 down/.
scp -P $PORT_SWITCH ubuntu@127.0.0.1:~/$SCRIPT_SWITCH down/.
