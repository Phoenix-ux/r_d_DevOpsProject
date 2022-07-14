#!/bin/bash

pname="apache2"
ppid=

if [ `ps -eo comm,user,pid | grep root | grep $pname | wc -l` -gt 0 ]; then
                                        ppid=`ps -eo comm,user,pid |grep root | grep $pname | awk '{ print $3 }'`;
fi
echo $ppid
kill -15 $ppid

if [ $? -ne 0 ]; then
                echo "Can not stop proccess $pname with PID $ppid"
        else
                echo "Proccess $pname with PID $ppid was stoped"
fi

sleep 10

if [ `ps -eo pid | grep $ppid` ]; then
       echo "Proccess $pname with PID $ppid still running... going to kill it"
       kill -9 $ppid
fi

if [ $? -ne 0 ]; then
                echo "Still can not kill proccess $pname with PID $ppid"
        else
                echo "Proccess $pname with PID $ppid was killed"
fi

