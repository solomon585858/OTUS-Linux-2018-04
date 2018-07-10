#!/bin/bash

hostname inetrouter.otus.local
> /etc/resolv.conf && echo "search otus.local" >> /etc/resolv.conf && echo "nameserver 192.168.0.3" >> /etc/resolv.conf
chattr +i /etc/resolv.conf
> /etc/hostname && echo "inetrouter.otus.local" >> /etc/hostname

yum update -y

yum install bind-utils -y
  if [ $? -eq 0 ]; then
    echo "Command executed successfully!"
  else
    echo "Command install bind-utils completed with error. FAIL!!!"
    exit 1
fi

systemctl restart network

yum install freeipa-client -y
  if [ $? -eq 0 ]; then
    echo "Command executed successfully!"
  else
    echo "Command install freeipa-client completed with error. FAIL!!!"
    exit 1
fi

ipa-client-install --principal admin --password Password -U --mkhomedir
