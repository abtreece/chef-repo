#
# Cookbook Name:: sensu_server
# Recipe:: handlers
#

sensu_handler 'influxdb' do
  type 'udp'
  mutator 'influxdb_line_protocol'
  socket(
    host: node['sensu_server']['influxdb_address'],
    port: node['sensu_server']['influxdb_port']
  )
end

cookbook_file File.join(node['sensu_server']['extension_dir'], 'influxdb_line_protocol.rb') do
  source 'extensions/influxdb_line_protocol.rb'
  mode 0755
  notifies :create, 'ruby_block[sensu_service_trigger]', :immediately
end
