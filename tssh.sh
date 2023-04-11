#!/bin/bash

# set local ip address or hostname
local=192.168.1.1
# set tailscale ip address or hostname
ts=100.123.456.789
# set username of host
username="user"

# ssh via tailscale when tailscale activate, ssh with local address when tailscale deactivate
isTsActivate=ping -c 1 $ts > /dev/null; echo $?

if[$isTsActivate -eq 0]; then
    ssh $username@$ts
else
    ssh $username@$local
fi