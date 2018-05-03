#!/bin/bash

sudo mdadm --create /dev/md0 -l 5 -n 5 /dev/sd{b,c,d,e,f}
        
sudo parted --script /dev/md0 mklabel gpt mkpart primary ext4 1MiB 101MiB mkpart primary ext4 101MiB 201MiB mkpart primary ext4 201MiB 301MiB mkpart primary ext4 301MiB 401MiB mkpart primary ext4 401MiB 501MiB
