#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#install apache
package 'apache2' do
	action :install
end

#start service
#make sure the service starts on reboot
service 'apache2' do
	supports :restart => :true
	action [:enable, :start]
end

#create home page
cookbook_file "/var/www/index.html" do
	source "index.html"
	mode "0644"
end
