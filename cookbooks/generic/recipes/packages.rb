
# packages

%w{build-essential git-core libgdbm-dev libreadline-dev libssl-dev libyaml-dev s3cmd tmux tk-dev vim wget zlib1g-dev zsh}.each do |pkg|
  package pkg do
    action [:install]
  end
end

cookbook_file "bashrc" do
  path "/root/.bashrc"
  action :create
end

cookbook_file "vimrc" do
  path "/root/.vimrc"
  action :create_if_missing
end
