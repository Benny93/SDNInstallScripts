#greps ip from mac and connects
MAC='00:19:d2:75:e0:20'
NAME='linux'
lanscan='arp-scan --localnet --numeric --ignoredups | grep -E "([a-f0-9]{2}:){5}[a-f0-9]{2}"'
echo $lanscan
ip="$(eval $lanscan | grep  $MAC | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")"
echo "connecting to "$ip
ssh $NAME@${ip}
