#
# Author:: Adam Jacob <adam@opscode.com>
# Cookbook Name:: unicorn
# Recipe:: default
#
# Copyright 2009, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

gem_package "unicorn"

template "/etc/init.d/unicorn-init.sh" do
  source "unicorn-init.sh.erb"
  mode 0755
  owner "root"
  group "root"
end

directory "/var/www/" do
  owner "www-data"
  group "www-data"
  mode 0644
  action :create
end

directory "/var/www/rails/" do
  owner "www-data"
  group "www-data"
  mode 0644
  action :create
end

directory "/var/www/rails/releases/" do
  owner "www-data"
  group "www-data"
  mode 0644
  action :create
end

directory "/var/www/rails/shared/" do
  owner "www-data"
  group "www-data"
  mode 0644
  action :create
end

directory "/var/www/rails/releases/bootstrapped" do
  owner "www-data"
  group "www-data"
  mode 0644
  action :create
end

link "/var/www/rails/current" do
  to "/var/www/rails/releases/bootstrapped" 
  only_if "test ! -L /var/www/rails/current"
end

directory "/var/www/rails/current/config/" do
  owner "www-data"
  group "www-data"
  mode 0644
  action :create
end

template "/var/www/rails/current/config/unicorn.rb" do
  source "unicorn.rb.erb"
  mode 0755
  owner "www-data"
  group "www-data"
end
