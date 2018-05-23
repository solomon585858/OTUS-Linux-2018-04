#!/bin/bash

#Show Minimum Response Time
echo "Minimum Response Time"
awk '($9 ~ /200/)' /var/log/httpd/access_log | awk '{print $10}' | sort -nr | tail -n 1 ; echo

#Show Average Response Time
echo "Average Response Time"
echo $(( `awk '($9 ~ /200/)' /var/log/httpd/access_log | awk '{print $10}' | awk '{s+=$1} END {print s}'` / `awk '($9 ~ /200/)' /var/log/httpd/access_log  | wc -l` )) ; echo

#Show Maximum Response Time
echo "Maximum Response Time"
awk '($9 ~ /200/)' /var/log/httpd/access_log | awk '{print $10}' | sort -nr | head -n 1 ; echo

#List IP addresses of visitors of Apache Server
echo "IP address list of visitors"
awk '{print $1}' /var/log/httpd/access_log | sort -u

#List number of requests for IP addresses of Apache Server
echo "Number of requests for IP addresses of visitors"
cat /var/log/httpd/access_log |awk '{print $1}' |sort |uniq -c |sort -n |tail ; echo

#List Real-time IP-Page Requests"
echo "Real-time IP-Page Requests"
tailf /var/log/httpd/access_log | awk '{ printf("%-15s\t%s\t%s\t%s\n", $1, $6, $9, $7) }'

