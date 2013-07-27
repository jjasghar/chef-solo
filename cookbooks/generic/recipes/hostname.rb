
# packages

package 'ntp'
package 'vim'

# add a directory
directory '/tmp/chef_added'

#mount '/tmp/chef_added'
#	action [:mount, :enable] #mount and addd it to fstab
#	device 'chef_added'
#	device_type :label
#	options 'noatime,errors=remount-ro'
#end

# hostname
hostname = 'j2a'

file '/etc/hostname' do
	content "#{hostname}\n"
end

service 'hostname' do
	action :restart
end

file '/etc/hostname' do
	content "127.0.0.1 localhost #{hostname}\n"
end

# deploy apache config
cookbook_file '/etc/apache2/apache2.conf'
# this will compy cookbooks/op/files/default/apache2.conf the above location
# rerun deploy.sh to copy the new file(s) in

service 'apache2' do
	action :restart
end
