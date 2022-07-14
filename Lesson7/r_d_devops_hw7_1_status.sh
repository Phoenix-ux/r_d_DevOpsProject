#!/bin/bash

pname="apache2"
ppid=

if [ `ps -eo comm,user,pid | grep root | grep $pname | wc -l` -gt 0 ]; then
                        ppid=`ps -eo comm,user,pid |grep root | grep $pname | awk '{ print $3 }'`;
fi


kill -15 $ppid

if [ $? -ne 0 ]; then
                echo "Can not stop proccess $pname with PID $ppid"
        else
                echo "Proccess $pname with PID $ppid was stoped"
fi

