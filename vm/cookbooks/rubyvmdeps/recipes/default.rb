#
# Cookbook:: rubydev
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


# Keeps the rbenv install upto date
rbenv_user_install 'vagrant'

rbenv_plugin 'ruby-build' do
  git_url 'https://github.com/rbenv/ruby-build.git'
  git_ref 'v20181019'
  user 'vagrant'
end

rbenv_ruby '2.5.3' do
  user 'vagrant'
end

rbenv_global '2.5.3' do
  user 'vagrant'
end
