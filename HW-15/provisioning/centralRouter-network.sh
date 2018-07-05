#!/bin/bash

sysctl net.ipv4.conf.all.forwarding=1
echo "DEFROUTE=no" >> /etc/sysconfig/network-scripts/ifcfg-eth0 
echo "GATEWAY=192.168.255.1" >> /etc/sysconfig/network-scripts/ifcfg-eth1
echo "GATEWAY=192.168.255.6" >> /etc/sysconfig/network-scripts/ifcfg-eth2                      
systemctl restart network
sysctl net.ipv4.conf.all.forwarding=1
