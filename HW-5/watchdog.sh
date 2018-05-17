#!/bin/bash

NAME=what_service_to_monitor
START=/full/path/to/$NAME
NOTIFY=person1mail
NOTIFYCC=person2mail
GREP=/bin/grep
PS=/bin/ps
NOP=/bin/true
DATE=/bin/date
MAIL=/bin/mail
RM=/bin/rm

$PS -ef|$GREP -v grep|$GREP $NAME >/dev/null 2>&1
case "$?" in
 0)
 # It is running in this case so we do nothing.
 $NOP
 ;;
 1)
 echo "$NAME is NOT RUNNING. Starting $NAME and sending notices."
 $START 2>&1 >/dev/null &
 NOTICE=/tmp/watchdog.txt
 echo "$NAME was not running and was started on `$DATE`" > $NOTICE
 $MAIL -n -s "watchdog notice" -c $NOTIFYCC $NOTIFY < $NOTICE
 $RM -f $NOTICE
 ;;
esac

exit