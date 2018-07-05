#!/bin/bash

sysctl net.ipv4.conf.all.forwarding=1
echo "192.168.0.0/22 via 192.168.255.5 dev eth1" >> /etc/sysconfig/network-scripts/route-eth1
systemctl restart network
sysctl net.ipv4.conf.all.forwarding=1    
 