
# packages

%w{build-essential wget libyaml-dev zlib1g-dev libreadline-dev libssl-dev tk-dev libgdbm-dev vim git-core zsh}.each do |pkg|
  package pkg do
    action [:install]
  end
end


