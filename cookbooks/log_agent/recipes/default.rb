#
# Cookbook Name:: log_agent
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'td-agent::default'
include_recipe 'log_agent::plugins'
include_recipe 'log_agent::sources'

group 'adm' do
  action :modify
  members 'td-agent'
  append true
end
