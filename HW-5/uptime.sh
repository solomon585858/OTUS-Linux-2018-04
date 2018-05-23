#!/bin/bash
 #Apache HTTP service monitoring
 /bin/netstat -tulpn | awk '{print $4}' | awk -F: '{print $4}' | grep ^80$ > /dev/null   2>/dev/null
 a=$(echo $?)
 if test $a -ne 0
 then
 echo "httpd service down" | mail -s "Apache HTTP Service DOWN and restarted now" root@localhost
 sudo systemctl start httpd > /dev/null 2>/dev/null
 else
 sleep 0
 fi
