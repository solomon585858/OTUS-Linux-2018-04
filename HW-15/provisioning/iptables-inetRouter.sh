#!/bin/bash

iptables --flush 
iptables --table nat --flush
iptables --delete-chain
iptables --table nat --delete-chain
iptables -t nat -A POSTROUTING ! -d 192.168.0.0/16 -o eth0 -j MASQUERADE
/usr/libexec/iptables/iptables.init save
systemctl restart iptables
