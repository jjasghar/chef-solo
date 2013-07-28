
# packages

package 'ntp'

script "configure-ntp" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
  STATUS=0
  echo "America/Chicago" > /etc/timezone || STATUS=1
  dpkg-reconfigure -f noninteractive tzdata || STATUS=1
  exit $STATUS
  EOH
end

