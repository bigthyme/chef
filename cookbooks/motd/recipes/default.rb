#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

LOCATION = "/etc"

template "#{LOCATION}/motd" do
  source "motd.erb"
  mode "0644"
  action :create_if_missing
end