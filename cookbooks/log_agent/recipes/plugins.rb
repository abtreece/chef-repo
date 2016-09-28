td_agent_gem 'gelf' do
  plugin false
end

#td_agent_plugin 'out_gelf' do
#  url 'https://raw.githubusercontent.com/emsearcy/fluent-plugin-gelf/master/lib/fluent/plugin/out_gelf.rb'
#end

cookbook_file '/etc/td-agent/plugin/out_gelf.rb' do
  source 'plugins/out_gelf.rb'
  owner 'td-agent'
  group 'td-agent'
  mode 0755
  action :create
end
