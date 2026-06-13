#!/bin/bash
echo "bleh.bash executed at $(date)" >> /tmp/bleh.log

blueutil --disconnect "WH-XB910N"
blueutil -p 0
