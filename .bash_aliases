alias lanscan='sudo arp-scan --localnet --numeric --ignoredups | grep -E "([a-f0-9]{2}:){5}[a-f0-9]{2}"'
alias myscan='sudo arp-scan --interface enxa0cec802c771 --localnet --ignoredups'
alias mynmap='sudo nmap -sn 192.168.2.*'
alias mypico='picocom -b 115200 -r -l /dev/ttyACM0'
