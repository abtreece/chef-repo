# specify resource without action for testing default action == :install
sensu_gem 'sensu-plugin'

sensu_gem 'sensu-plugins-chef' do
  action :install
end

sensu_gem 'sensu-plugins-cpu-checks' do
  action :install
end

sensu_gem 'sensu-plugins-disk-checks' do
  action :install
end

sensu_gem 'sensu-plugins-memory-checks' do
  action :install
end

#sensu_gem 'sensu-plugins-process-checks' do
#  action :install
#end

sensu_gem 'sensu-plugins-load-checks' do
  action :install
end

sensu_gem 'sensu-plugins-influxdb' do
  action :install
end
