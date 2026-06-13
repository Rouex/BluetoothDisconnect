#!/bin/bash

name="WH-XB910N"
last_wake=$(pmset -g log | grep -i "Wake from" | tail -1)


if echo "$last_wake" | grep -q "rtc"; then
  echo "rtc wake detected at $(date), disconnecting" >> /tmp/waketrigger.log
  blueutil --disconnect "$name"
  blueutil -p 0
else 
  echo "normal wake at $(date), doing nothing" >> /tmp/waketrigger.log
fi
