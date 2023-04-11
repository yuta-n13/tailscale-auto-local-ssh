#!/bin/bash

# set local ip address or hostname
local=192.168.1.1
# set tailscale ip address or hostname
ts=100.123.456.789
# set username of host
username="user"
# set port
port=22

# ssh via tailscale when tailscale activate, ssh with local address when tailscale deactivate
isTsActivate=$(ping -c 1 $ts > /dev/null; echo $?)

if [ $isTsActivate -eq 0 ]; then
    ssh $username@$ts -p $port
elif [ $isTsActivate -eq 1 ]; then
    ssh $username@$local -p $port
else
    echo "Can't connect. Please check address or network setting."
    exit 1
fi