sensu_check 'check_cpu' do
  command 'check-cpu.rb -w 50 -c 15'
  interval 60
  subscribers ['all']
end

sensu_check 'check_ram' do
  command 'check-ram.rb'
  interval 60
  subscribers ['all']
end

sensu_check 'check_swap' do
  command 'check-swap.rb -w 100 -c 500'
  interval 60
  subscribers ['all']
end

sensu_check 'check_disk_usage' do
  command 'check-disk-usage.rb'
  interval 60
  subscribers ['all']
end

sensu_check 'check_load' do
  command 'check-load.rb'
  interval 60
  subscribers ['all']
end
