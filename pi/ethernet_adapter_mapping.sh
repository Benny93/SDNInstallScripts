#/etc/udev/rules.d/90-usb-ethernet.conf 
if1_addr='a0:ce:c8:02:c7:71'
if1_name='eth1'

if2_addr='00:00:00:00:01:09'
if2_name='eth2'

RULE_PATH='/etc/udev/rules.d/90-usb-ethernet.conf'

if1_cmd='SUBSYSTEM=="net", ACTION=="add", DRIVERS=="?*", ATTR{address}=="'$if1_addr'", ATTR{dev_id}=="0x0", ATTR{type}=="1", NAME="'$if1_name'"'
if2_cmd='SUBSYSTEM=="net", ACTION=="add", DRIVERS=="?*", ATTR{address}=="'$if2_addr'", ATTR{dev_id}=="0x0", ATTR{type}=="1", NAME="'$if2_name'"'
sudo echo $if1_cmd >> $RULE_PATH
sudo echo $if2_cmd >> $RULE_PATH
echo "Added: "
echo $if1_cmd
echo $if2_cmd
echo "In "$RULE_PATH
