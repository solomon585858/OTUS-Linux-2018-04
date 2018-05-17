#!/bin/sh
PATH="/sbin:/usr/sbin:/usr/local/sbin:/bin:/usr/bin:/usr/local/bin"                                                                                            
 
if pidof -x $(basename $0) > /dev/null; then
   for p in $(pidof -x $(basename $0)); do
   if [ $p -ne $$ ]; then
   echo "Script $0 is already running: exiting"
    exit
   fi
   done
fi
 
dt=`date +%c`
 
  echo $dt
  echo "Sync /srv/www/ with othernode"
  /usr/bin/rsync --numeric-ids -av --delete /srv/www/ root@othernode:/srv/www/
