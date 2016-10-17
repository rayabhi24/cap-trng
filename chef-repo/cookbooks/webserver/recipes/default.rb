#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright 2016, Mohit Sethi<mohit@sethis.i>
#
# All rights reserved - Apache v2 License
#

# Run sudo apt-get update -y

# execute 'apt-get update -y'

package 'nginx'

service 'nginx' do
  action :start
end

# cookbook_file "/var/www/html/index.nginx-debian.html" do
#   source "index.html"
#   action :create
# end


# Solution 1
if platform_family?('debian')
template "/var/www/html/index.nginx-debian.html" do
  source "index.html.erb"
  action :create
elsif platform_family?('centos')
  template "/var/www/html/index.html" do
    source "index.html.erb"
    action :create
  end
elsif platform_family?('windows')
  template 'c:\nginx\www\index.html' do
    source 'index.html.erb'
    action :create
  end
else 
  template "/var/www/html/index.html" do
    source "index.html.erb"
    action :create
  end
end


#solution 2
template node['webserver']['index_path']["node['platform_family']"] do
  source "index.html.erb"
  action :create
end




file "/var/www/html/file.html" do
  content 'random stuff'
  action :create
end

# package 'nginx' do
#   # version: latest - implied
#   action :install
# end
