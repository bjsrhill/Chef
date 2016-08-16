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

execute 'python-software-properties' do
  command "apt-get install -y python-software-properties debconf-utils"
end

execute "add-apt-repository ppa:webupd8team/java" do
  command "add-apt-repository -y ppa:webupd8team/java"
end

execute "apt-get update" do
  command "apt-get update"
end

execute "Install oracle-java8 accepting license" do
  command "echo 'oracle-java8-installer shared/accepted-oracle-license-v1-1 select true' | sudo /usr/bin/debconf-set-selections"
end

execute "install oracle java" do
  command "apt-get install -y oracle-java8-installer"
end

execute "Install Maven" do
  command "apt-get install -y maven"
end
