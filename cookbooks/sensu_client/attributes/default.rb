default['sensu']['use_embedded_ruby'] = true
default['sensu']['version'] = '0.26.1-1'

default[:sensu_client][:additional_attributes] = Mash.new
default[:sensu_client][:sensu_plugin_version] = false
default[:sensu_client][:subscriptions] = ['all'] + node[:roles]

default[:sensu][:rabbitmq][:host] = '127.0.0.1'
default[:sensu][:rabbitmq][:port] = 5671
default[:sensu][:rabbitmq][:vhost] = '/sensu'
default[:sensu][:rabbitmq][:user] = 'sensu'
default[:sensu][:rabbitmq][:password] = 'password'
