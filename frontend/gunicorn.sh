#!/bin/bash
if [ "$1" = "reload" -o "$1" = "stop"  ];then
    pid=`pgrep gunicorn`
    kill -9 $pid 2>/dev/null
    wait $pid 2>/dev/null
fi
if [ "$1" = "reload" -o "$1" = "start"  ];then
    nohup gunicorn -c gunicorn.py app:app &
fi
