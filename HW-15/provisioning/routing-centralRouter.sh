#!/bin/bash

echo "1 rt2" >> /etc/iproute2/rt_tables
ip route add 192.168.0.0/24 dev eth3 table rt2
ip route add default via 192.168.255.6 dev eth2 table rt2
ip rule add from 192.168.0.2/32 table rt2
ip rule add to 192.168.0.2/32 table rt2
