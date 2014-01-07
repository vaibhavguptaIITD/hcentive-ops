#
# Cookbook Name:: tomcat
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

if node['platform'] == "centos" && node['tomcat']['base_version'] == 7
	Chef::Application.fatal!("Tomcat 7 is not available in centos")
end
include_recipe "apt"
include_recipe "tomcat"