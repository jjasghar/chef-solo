#!/bin/bash

host="${1:-deployer@j2a.ath.cx}"

# The host key might change when we instantiate a new VM, so
# we remove (-R) the old host key from known_hosts
ssh-keygen -R "${host#*@} 2> /dev/null

tar cj . | ssh -o 'StrictHostKeyChecking no' "$host" '
sudo rm -rf ~/chef-solo &&
mkdir ~/chef-solo &&
cd ~/chef-solo &&
tar xj &&
sudo bash install.sh'


