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

if [ `ps -eo pid | grep $ppid` ]; then
        echo "Proccess $pname with PID $ppid still running... going to suspend it"
        kill -18 $ppid
fi

if [ $? -ne 0 ]; then
                echo "Can not suspend $pname with PID $ppid"
        else
		for i in `seq 6`; do
			sleep 5
			echo "Proccess $pname with PID $ppid was suspended"
		done
fi


