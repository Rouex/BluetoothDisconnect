#!/bin/bash
# echo "trigger.sh executed at $(date)" >> /tmp/trigger.log
# 20M for 20 minutes after..

time=$(date -v+2M +"%m/%d/%Y %H:%M:%S")
sudo pmset schedule wake "$time"

# caffeinate only prevents idle sleep, no closing of macbook
# nohup bash -c "caffeinate -i -t $time && ~/Code/BluetoothDisconnect/bleh.bash" &