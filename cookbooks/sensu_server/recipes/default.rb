#
# Cookbook Name:: sensu_server
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'sensu::default'

include_recipe 'sensu::rabbitmq'
include_recipe 'sensu::redis'
include_recipe 'sensu::server_service'
include_recipe 'sensu::api_service'

include_recipe 'uchiwa::default'
include_recipe 'uchiwa::http'

include_recipe 'sensu_server::plugins'
include_recipe 'sensu_server::handlers'
include_recipe 'sensu_server::checks'
