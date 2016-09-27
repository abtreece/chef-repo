td_agent_source 'test_in_tail' do
  type 'tail'
  tag 'syslog'
  params(format: 'syslog',
         path: '/var/log/syslog')
end

td_agent_match 'test_gelf_match' do
  type 'copy'
  tag 'syslog.*'
  params( store: [{ type: 'gelf',
                   host: '192.168.7.6',
                   port: 12201,
                   flush_interval: '5s'},
                   { type: 'stdout' }])
end
