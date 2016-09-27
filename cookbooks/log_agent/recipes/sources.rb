td_agent_source 'in_syslog' do
  type 'syslog'
  tag 'syslog'
  params(port: '42185')
end

td_agent_match 'test_gelf_match' do
  type 'copy'
  tag 'syslog.**'
  params( store: [{ type: 'gelf',
                   host: '192.168.7.6',
                   port: 12201,
                   flush_interval: '5s'},
                   { type: 'stdout' }])
end
