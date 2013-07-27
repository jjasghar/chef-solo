#!/bin/bash

# This run as root on the machine
chef_binary=/opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.6.0/bin/chef-solo

# are we not bootstrapped?
if ! test -f "$chef_binary"; then
	export DEBIAN_FRONTEND=noniteractive
	apt-get update &&
	apt-get dist-upgrade -y &&
	apt-get install ruby1.9.1 ruby1.9.1-dev make curl -y &&
	curl -L https://www.opscode.com/chef/install.sh | sudo bash
fi &&

chef-solo -c solo.rb -j solo.json


