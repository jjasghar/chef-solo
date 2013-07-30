
%w{build-essential wget libyaml-dev zlib1g-dev libreadline-dev libssl-dev tk-dev libgdbm-dev libmysql-ruby libmysqlclient-dev sqlite3 libsqlite3-dev}.each do |pkg|
    package pkg do
       action [:install]
    end
end

gem_package "bundler"





