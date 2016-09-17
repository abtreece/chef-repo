#
# Cookbook Name:: sensu_client
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'sensu::default'

sensu_client node.name do
  address node[:ipaddress]
  subscriptions node[:sensu_client][:subscriptions]
  additional node[:sensu_client][:additional_attributes].to_hash
end

sensu_gem 'sensu-plugin' do
  version node[:sensu_client][:sensu_plugin_version] if node[:sensu_client][:sensu_plugin_version]
end

include_recipe 'sensu::client_service'

include_recipe 'sensu-client::plugins'
include_recipe 'sensu-client::metrics'
