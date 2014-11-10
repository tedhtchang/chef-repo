

# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

username = "idt"

user username do
  action :create
  home "/home/#{username}"
  supports :manage_home=>true
end

template "/home/#{username}/test.txt" do
  source "user-template-example.erb"
  action :create
  group username
  owner username
  variables ({
	:username => username
  })
end

package "irssi" do
  action :install
end

directory "/home/#{username}/.irssi" do
  action :create
  owner username
  group username
end

cookbook_file "/home/#{username}/.irssi/config" do
  source "irssi-config"
  owner username
  group username
end
