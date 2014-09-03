#!/bin/bash 

TASK=`curl -sL http://192.168.77.11:8080/v2/apps/echo/tasks`
HOST=`echo $TASK | tr "," "\n" | grep "host" | cut -f4 -d\" | sed -e "s/^mesos-s/192.168.77.2/"`
PORT=`echo $TASK | tr "," "\n" | grep "ports" | cut -f2 -d[ | cut -f1 -d]`

echo "`date` - testing" | nc ${HOST} ${PORT}
