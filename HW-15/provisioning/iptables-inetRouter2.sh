#!/bin/bash

iptables --flush 
iptables --table nat --flush
iptables --delete-chain
iptables --table nat --delete-chain
iptables -t nat -A POSTROUTING ! -d 192.168.0.0/16 -o eth0 -j MASQUERADE
iptables -t nat -A PREROUTING -p tcp -i eth0 --dport 8080 -j DNAT --to-destination 192.168.0.2:80
iptables -A FORWARD -p tcp -d 192.168.0.2 --dport 80 -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
/usr/libexec/iptables/iptables.init save
systemctl restart iptables
