#!/bin/bash
while :
do
        echo "Press [CTRL+C] to stop.."
        sudo /etc/init.d/boinc-client restart
        sleep 3600
done