#
# Cookbook Name:: test1
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#Create Contrail repository directory 
#directory node[:contrail][:repo_server_path] do
#	action :create
#	recursive true
#end


#move the contrail package tarball to the repo path
#cookbook_file node[:contrail][:repo_server_path]+node[:contrail][:rpm] do
#	action :create_if_missing
#	source node['contrail']['rpm']
#end


#untar



#Create repository
yumrepo_server 'creates contrail repo' do
	dir '/opt/contrail_install_repo'
	action :create
end
