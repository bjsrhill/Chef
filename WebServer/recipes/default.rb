#
# Cookbook Name:: WebServer
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
# Cookbook Name:: WebServer
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

apt_package 'python-software-properties' do
end

execute "add-apt-repository ppa:webupd8team/java" do
  command "add-apt-repository ppa:webupd8team/java"
end

execute "apt-get update" do
  command "apt-get update"
end

execute  'oracle-java7-installer' do
  command 'apt-get install -y oracle-java7-installer'
end
