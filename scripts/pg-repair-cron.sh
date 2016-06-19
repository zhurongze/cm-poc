#!/bin/sh

while [ 1 ]
do
    sleep 5
    pg=`ceph health detail |grep inconsistent | grep "^pg" | awk '{print $2}'`
    if [ ! $pg = "" ]; then
        echo "the pg is $pg"
        ceph pg repair $pg
    else
	echo "there is not pg to repair"
    fi
done

