td_agent_gem 'gelf' do
  plugin false
end

td_agent_plugin 'out_gelf' do
  url 'https://raw.githubusercontent.com/emsearcy/fluent-plugin-gelf/master/lib/fluent/plugin/out_gelf.rb'
end

