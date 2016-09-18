default['sensu']['use_embedded_ruby'] = true
default['uchiwa']['version'] = '0.18.1-1'
default['uchiwa']['settings']['user'] = 'admin'
default['uchiwa']['settings']['pass'] = 'eeGhae9boht3aoc'

default['uchiwa']['api'] = [
  {
    'name' => 'us-east-1',
    'host' => '127.0.0.1',
    'url' => 'http://127.0.0.1:4567',
    'path' => '',
    'ssl' => false,
    'timeout' => 5
  }
]

default['sensu_server']['extension_dir'] = '/etc/sensu/extensions'
default['sensu_server']['influxdb_address'] = '127.0.0.1'
default['sensu_server']['influxdb_port'] = 8090
