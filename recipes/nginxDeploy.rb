#
# Cookbook:: nginx
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
 package 'epel-release' do
    action :install
 end  

 package 'nginx' do
    action :install
 end
 
 service 'nginx' do
    action [:enable, :start]
 end   

 
