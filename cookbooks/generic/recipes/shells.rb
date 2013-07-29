

cookbook_file 'zshrc" do
  path "/root/.zshrc
  action :create_if_missing
end
