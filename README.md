# tailscale-auto-local-ssh
## What is this?
ssh command via tailscale network, if tailscale deactivate,connect local address automatically.
## Why I made this
I sometimes work on the road with an SSH connection to my home computer using the Termux app on my Android smartphone (I have an SSH shell in /usr/bin with a Tailscale IP and can just type in the device name in terminal and SSH to it). I thought it would be a hassle to have to activate Tailscale even if I am at home and connected to my local network.




# Usage
First, edit tssh.sh to set local address or hostname,tailscale address or hostname,username,port number.

then



```bash
bash tssh.sh
```

or

```bash
chmod +x tssh.sh

./tssh.sh
```

or you can change tss.sh to favorite name.(Like host's name "server","myComputer")

```bash
chmod +x tssh.sh
mv tssh.sh favorite name
```
then,add this on .bashrc or .bash_profile
```bash
export PATH=$HOME/(Directory):$PATH
```